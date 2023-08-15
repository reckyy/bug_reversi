 def test_cannot_put_stone
    initial_data = <<~BOARD
      W-WWWW--
      W-BWWW--
      WBWWWWW-
      WWBWWW--
      WBBBBB--
      --B-----
      --B-----
      --B-----
    BOARD
    board = build_board(initial_data)
    refute put_stone(board, 'b1', BLACK_STONE)
    assert_equal build_board(initial_data), board
  end