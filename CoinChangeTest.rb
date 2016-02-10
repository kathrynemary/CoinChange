require 'minitest/autorun'
require './CoinChange'

class TestCoins < Minitest::Test

	def test_0_cents_is_0_coins
		x = Amount.new(0)
		assert_equal 0, x.coins
	end

	def test_1_cent_is_1_coin
		x = Amount.new(1)
		assert_equal 1, x.coins
	end

	def test_2_cents_is_2_coins
		x = Amount.new(2)
		assert_equal 2, x.coins
	end

	def test_5_cents_is_1_coin
		x = Amount.new(5)
		assert_equal 1, x.coins
	end

	def test_10_cents_is_1_coin
		x = Amount.new(10)
		assert_equal 1, x.coins
	end

	def test_25_cents_is_1_coin
		x = Amount.new(25)
		assert_equal 1, x.coins
	end

	def test_30_cents_is_2
		x = Amount.new(30)
		assert_equal 2, x.coins
	end

	def test_29_cents_is_5
		x = Amount.new(29)
		assert_equal 5, x.coins
	end

	def test_99_cents_is_9_coins
		x = Amount.new(99)
		assert_equal 9, x.coins
	end


end