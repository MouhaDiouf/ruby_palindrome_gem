# frozen_string_literal: true

require_relative "mouha_palindrome/version"

class String

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    puts processed_content.empty?
   !processed_content.empty? && processed_content == processed_content.reverse
  end


  private

    # Returns content for palindrome testing.
    def processed_content
     scan(/[a-z]/i).join.downcase
    end
end