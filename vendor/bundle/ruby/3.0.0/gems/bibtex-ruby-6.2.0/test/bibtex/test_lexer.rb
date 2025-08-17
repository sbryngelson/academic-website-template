require 'helper.rb'

module BibTeX
  class LexerTest < Minitest::Spec
    it 'correctly scans a string literal' do
      assert_equal Lexer.new.analyse('@string{ x = "foo" }').symbols, [:AT, :STRING, :LBRACE, :NAME, :EQ, :STRING_LITERAL, :RBRACE, false]
    end

    it 'strips line breaks by default' do
      assert_equal Lexer.new.analyse(%(@string{ x = "foo\nbar" })).stack[-3],
        [:STRING_LITERAL, 'foo bar']
    end

    it 'strips whitespace after line breaks by default' do
      assert_equal Lexer.new.analyse(%(@string{ x = "foo\n    bar" })).stack[-3],
        [:STRING_LITERAL, 'foo bar']
    end

    it 'matches KEY tokens' do
      assert_equal Lexer.new.analyse('@misc{foo, }').symbols,
        [:AT, :NAME, :LBRACE, :KEY, :RBRACE, false]
    end

    it 'matches KEY tokens with non-ascii characters' do
      assert_equal Lexer.new.analyse('@misc{löwe, }').symbols,
        [:AT, :NAME, :LBRACE, :KEY, :RBRACE, false]
    end

    it 'matches KEY tokens after whitespace' do
      assert_equal Lexer.new.analyse('@misc{  foo, }').symbols,
        [:AT, :NAME, :LBRACE, :KEY, :RBRACE, false]
    end

    it 'matches KEY token with braces' do
      assert_equal Lexer.new.analyse('@misc{fo{o, }').symbols,
        [:AT, :NAME, :LBRACE, :KEY, :RBRACE, false]
      assert_equal Lexer.new.analyse('@misc{fo}o, }').symbols,
        [:AT, :NAME, :LBRACE, :KEY, :RBRACE, false]
      assert_equal Lexer.new.analyse('@misc{foo:{bar}, }').symbols,
        [:AT, :NAME, :LBRACE, :KEY, :RBRACE, false]
    end

    it "doesn't start a comment for types starting with but not equal @comment" do
      assert_equal Lexer.new.analyse('@commentary{staudinger, }').symbols,
        [:AT, :NAME, :LBRACE, :KEY, :RBRACE, false]
    end

    it "doesn't start a preamble for types starting with but not equal @preamble" do
      assert_equal Lexer.new.analyse('@preamblestring{ preamble }').symbols,
        [:AT, :NAME, :LBRACE, :NAME, :RBRACE, false]
    end
  end
end
