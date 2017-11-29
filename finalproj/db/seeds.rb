User::HABTM_Boards.create!([
  {board_id: 1, user_id: 1},
  {board_id: 2, user_id: 1},
  {board_id: 3, user_id: 1},
  {board_id: 4, user_id: 1},
  {board_id: 5, user_id: 1},
  {board_id: 6, user_id: 1},
  {board_id: 7, user_id: 1},
  {board_id: 8, user_id: 1},
  {board_id: 9, user_id: 1},
  {board_id: 10, user_id: 1},
  {board_id: 11, user_id: 1},
  {board_id: 10, user_id: 2}
])
User::HABTM_Achievements.create!([
  {achievement_id: 1, user_id: 1},
  {achievement_id: 2, user_id: 1},
  {achievement_id: 3, user_id: 2},
  {achievement_id: 3, user_id: 1},
  {achievement_id: 4, user_id: 1}
])
Achievement::HABTM_User.create!([
  {achievement_id: 1, user_id: 1},
  {achievement_id: 2, user_id: 1},
  {achievement_id: 3, user_id: 2},
  {achievement_id: 3, user_id: 1},
  {achievement_id: 4, user_id: 1}
])
Board::HABTM_Users.create!([
  {board_id: 1, user_id: 1},
  {board_id: 2, user_id: 1},
  {board_id: 3, user_id: 1},
  {board_id: 4, user_id: 1},
  {board_id: 5, user_id: 1},
  {board_id: 6, user_id: 1},
  {board_id: 7, user_id: 1},
  {board_id: 8, user_id: 1},
  {board_id: 9, user_id: 1},
  {board_id: 10, user_id: 1},
  {board_id: 11, user_id: 1},
  {board_id: 10, user_id: 2}
])
User.create!([
  {email: "a@b.c", encrypted_password: "$2a$11$YnzRA.5SAbfnbPAb8/fzK.qh08I/5lYNl17XvvlOvI6nUeNbkCEji", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 4, current_sign_in_at: "2017-11-29 08:58:23", last_sign_in_at: "2017-11-28 19:06:59", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", name: "lol", point: -4, board_id: nil},
  {email: "user2@b.c", encrypted_password: "$2a$11$sDdOhKpfcFhSoOwusmPS7OdClORaYvu3MbYblTtQKsZDT/DjFw7Du", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 3, current_sign_in_at: "2017-11-29 09:08:45", last_sign_in_at: "2017-11-29 08:50:53", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", name: "Fettuccine", point: 1, board_id: nil}
])
Achievement.create!([
  {name: "FIVE", description: "Made five posts.", user_id: nil},
  {name: "wow ten!!!", description: "Made ten posts.", user_id: nil},
  {name: "Likeable", description: "Had a post liked by another user", user_id: nil},
  {name: "Unlikeable", description: "Had a post unliked by another user", user_id: nil}
])
Board.create!([
  {name: "BoardName666"},
  {name: "bored board"},
  {name: "sleepy "},
  {name: "Rails Decal is so cool!"},
  {name: "Robert'); DROP TABLE Students;-- "},
  {name: "temp"},
  {name: "yet another board name"},
  {name: "board8"},
  {name: "boarding school"},
  {name: "UCBMFET"},
  {name: "sounds eecs but ok"}
])
Favorite.create!([
  {post_id: nil, user_id: 2},
  {post_id: 24, user_id: 1},
  {post_id: 4, user_id: 2}
])
Post.create!([
  {title: "Title Content", content: "Post Content yayyyyyy", board_id: 1, parent_id: nil, likes: 0, user_id: 1},
  {title: nil, content: "oh worm?", board_id: 1, parent_id: 1, likes: 0, user_id: 1},
  {title: nil, content: "Oh", board_id: 1, parent_id: 2, likes: 0, user_id: 1},
  {title: "Rupi Kaur Memes", content: "does anyone know / how to get rails to work/ by default / \r\n\r\non windows machines /\r\n\r\n- rupi kaur", board_id: 10, parent_id: nil, likes: 1, user_id: 1},
  {title: nil, content: "Has anyone really been far as decided to use even go want to do look more like? You've got to be kidding me. I've been further even more decided to use even go need to do look more as anyone can. Can you really be far even as decided half as much to use go wish for that?", board_id: 10, parent_id: 4, likes: 0, user_id: 1},
  {title: nil, content: "@sounds fake but ok", board_id: 10, parent_id: 4, likes: 0, user_id: 1},
  {title: "thx fr th memery", content: "blank", board_id: 10, parent_id: nil, likes: 0, user_id: 1},
  {title: "Ban Me", content: "just do it", board_id: 10, parent_id: nil, likes: 0, user_id: 1},
  {title: "Boba Fundraiser Today!!", content: "come to sharetea pls", board_id: 10, parent_id: nil, likes: 0, user_id: 1},
  {title: "AFX Showcase", content: "showcase is on sat and sun buy my tickets", board_id: 10, parent_id: nil, likes: 0, user_id: 1},
  {title: "Overheard:", content: "\"made up post\"", board_id: 10, parent_id: nil, likes: 0, user_id: 1},
  {title: "tfw it's thanksgiving break but projects are still due", content: "sad reax", board_id: 10, parent_id: nil, likes: 0, user_id: 1},
  {title: "This is objectively bad content", content: "bad content", board_id: 10, parent_id: nil, likes: 0, user_id: 1},
  {title: "top secret", content: "[redacted]", board_id: 10, parent_id: nil, likes: 0, user_id: 1},
  {title: "best major?", content: "any major not in berkeley", board_id: 10, parent_id: nil, likes: 0, user_id: 1},
  {title: "test post", content: "please ignore", board_id: 10, parent_id: nil, likes: 0, user_id: 1},
  {title: "memes are good", content: "", board_id: 10, parent_id: nil, likes: 0, user_id: 1},
  {title: "memes are bad", content: "", board_id: 10, parent_id: nil, likes: 0, user_id: 1},
  {title: nil, content: "Guys what's going on here", board_id: 10, parent_id: 4, likes: 0, user_id: 2},
  {title: nil, content: "help", board_id: 10, parent_id: 4, likes: 1, user_id: 2},
  {title: nil, content: "@friend tag", board_id: 10, parent_id: 4, likes: 0, user_id: 2},
  {title: "Winner Winner", content: "Chicken Dinner", board_id: 1, parent_id: nil, likes: 0, user_id: 1}
])
