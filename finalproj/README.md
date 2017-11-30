#Title:
Cool As Heck Messageboard
#Team Members:
Ryo Yamamoto, Jeffrey Liu, Katherine BIgelow
#Demo Link:
 zzzz

#Idea:
Create a message board that tracks users’ contributions and uses achievements and leaderboards to promote interaction

#Models and Descriptions:
Users
- Has many posts, achievements, and boards
- Name
- Points (sum of user’s posts’ points specific to room, and maybe global one as well)
- Features like log-in handled by devise
Boards
- Name
- Has many posts
Leaderboard
- Has users
Posts
- Content, title, timestamp
- Has comments, which are posts
- Belongs to user (author)
- Points
Achievements
- Belong to user (multiple)

Features:
* Leaderboard with rankings of users based on contributions
* Create and subscribe to boards
* Create posts in boards and comment/like on them
* Achievements based on contributions

Division of Labor:
* RYO: Set up models/their relations, and write routes.
* JEFFREY: Fill in the empty models, implement basic functionality (creating boards, posts, comments, likes, etc.)
* KATHERINE: Style + implement remaining features (achievements and leaderboard)
