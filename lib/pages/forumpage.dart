import 'package:flutter/material.dart';

import 'CreatePostPage.dart';

// Forum widget, the main component of the app
class Forum extends StatefulWidget {
  const Forum({Key? key}) : super(key: key);

  @override
  State<Forum> createState() => _ForumState();
}

// State class for the Forum widget
class _ForumState extends State<Forum> {
  // List of posts in the forum
  List<Post> posts = [
    Post(username: 'Jian Ming',title: 'Introduction to Finance', content: 'Hello, folks. Finance is the management of money and investments, encompassing activities like saving, borrowing, lending, budgeting, and investing',
    likes: 5, comments: [
      Comment(username: 'Ryan', content: 'Investing is better than saving '),
      Comment(username: 'Rui Zhe', content: 'My role model is Rovert Kuok'),
    ],imagePath: 'assets/financePic.jpg'),
    Post(username: 'Khoon Lyn', title: 'Learning is awesome!', content:'When it is finance',likes: 10, comments: []),
    Post(username: 'Pikachu', title: '5nance',content: 'Check out this cool picture!', likes: 15, comments: [],
        imagePath: 'assets/memes.jpg'),
    Post(username: '5nance', title: 'Quote of the day',content: 'Life is like a box of chocolates. You never know what youre going to get', likes: 99, comments: [
      Comment(username: 'Mamba', content: 'Keep up with financial news and trends to make informed decisions about your money.'),
      Comment(username: 'Ui Zhe', content: 'Focus on paying off debts with high interest rates first to save money in the long run.'),
    ]),
    Post(username: 'Jay Chou', title:'Financial tips',content: 'Money can\'t buy happiness, but it can buy financial freedom.', likes: 1000, comments: [],imagePath: 'assets/financeMeme.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    // Main MaterialApp widget for the app
    return MaterialApp(
      title: 'Forum App',
      home: Scaffold(
        backgroundColor: Color(0xFF0C1C3C),
        appBar: AppBar(
          title: Text(
            'Forum',
            style: TextStyle(
              fontFamily: 'AbhayaLibre',
              fontSize: 38.0,
              fontWeight: FontWeight.bold,
              color: Colors.white, // Set text color to white
            ),
          ),
          backgroundColor: Color(0xFF0C1C3C),
          actions: [
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Image.asset("assets/Logo.png"),
            )
          ]
        ),
        body: ListView.builder(
          itemCount: posts.length,
          itemBuilder: (context, index) {
            return PostWidget(post: posts[index]);
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Navigate to new post screen
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CreatePostPages()),
            );
    },    child: Icon(Icons.add),
        ),
      ),
    );
  }
}

class Post {
  final String username;
  final String title;
  final String content;
  int likes;
  final String? imagePath;
  final List<Comment> comments;

  Post({required this.username,required this.title, required this.content, required this.likes, required this.comments, this.imagePath});
}

class Comment {
  final String username;
  final String content;
  int likes;

  Comment({required this.username, required this.content,this.likes=0});
}

class PostWidget extends StatefulWidget {
  final Post post;

  PostWidget({required this.post});

  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  TextEditingController _commentController = TextEditingController();

  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical:25.0),
      color: Colors.white.withOpacity(0.5),
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Posted by ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 4.0),
                _buildUserRoleBox(widget.post.username),
                SizedBox(width: 4.0),
                Text(
                  widget.post.username,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 3.0),
            Text(
              widget.post.title, // Display the title
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            if (widget.post.imagePath != null)
              Column(
                children: [
                  Image.asset(
                    widget.post.imagePath!,
                    width: 500.0, // Adjust image width as needed
                  ),
                  SizedBox(height: 20.0), // Add space between image and content
                ],
              ),
            Text(widget.post.content,
            style: TextStyle(fontSize: 16.0)),
            SizedBox(height: 18.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.post.likes++; // Increase the number of likes
                    });
                  },
                  child: Row(
                    children: [
                      Icon(Icons.thumb_up),
                      SizedBox(width: 6.0),
                      Text('${widget.post.likes}'),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.comment),
                    SizedBox(width: 6.0),
                    Text('${widget.post.comments.length}'),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        // Implement share logic here
                      },
                      icon: Icon(Icons.share),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 8.0),
            ...widget.post.comments.map((comment) =>
                CommentWidget(comment: comment)).toList(),
            SizedBox(height: 20.0),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _commentController,
                    decoration: InputDecoration(
                      hintText: 'Add a comment...',
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    String commentText = _commentController.text;
                    if (commentText.isNotEmpty) {
                      setState(() {
                        widget.post.comments.add(Comment(
                          username: 'User ',
                          content: commentText,
                        ));
                        _commentController.clear();
                      });
                    }
                  },
                  icon: Icon(Icons.send),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUserRoleBox(String username) {
    // Assuming 'username' is unique and corresponds to the user's role
    String role = _getUserRole(username);
    Color color = role == 'Learner' ? Colors.blue : Colors.green;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 3.0, vertical: 2.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Text(
        role,
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  String _getUserRole(String username) {
    if (username.startsWith('5') || username.startsWith('J')) {
      return 'Mentor';
    } else {
      return 'Learner';
    }
  }
}


class CommentWidget extends StatefulWidget {
  final Comment comment;

  CommentWidget({required this.comment});

  @override
  _CommentWidgetState createState() => _CommentWidgetState();
}

class _CommentWidgetState extends State<CommentWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Comment by ${widget.comment.username}',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.0),
          Text(widget.comment.content),
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    widget.comment.likes++; // Increase the number of likes
                  });
                },
                child: Row(
                  children: [
                    Icon(Icons.thumb_up),
                    SizedBox(width: 6.0),
                    Text('${widget.comment.likes}'),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {
                  // Implement share logic here
                },
                icon: Icon(Icons.share),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// class NewPostScreen extends StatefulWidget {
//   @override
//   _NewPostScreenState createState() => _NewPostScreenState();
// }

// class _NewPostScreenState extends State<NewPostScreen> {
//   TextEditingController _titleController = TextEditingController();
//   TextEditingController _descriptionController = TextEditingController();
//
//   @override
//   void dispose() {
//     _titleController.dispose();
//     _descriptionController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('New Post'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             TextField(
//               controller: _titleController,
//               decoration: InputDecoration(
//                 hintText: 'Title',
//                 hintStyle: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
//               ),
//               style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 16.0),
//             TextField(
//               controller: _descriptionController,
//               decoration: InputDecoration(
//                 hintText: 'Description',
//               ),
//               maxLines: null, // Allow multiple lines for the description
//             ),
//             SizedBox(height: 16.0),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 IconButton(
//                   onPressed: () {
//                     // Implement image picker logic here
//                   },
//                   icon: Icon(Icons.image),
//                 ),
//                 SizedBox(width: 16.0),
//                 ElevatedButton(
//                   onPressed: () {
//                     String title = _titleController.text;
//                     String description = _descriptionController.text;
//                     // Implement post creation logic here using 'title' and 'description'
//                     // For example, you can send the 'title' and 'description' to an API
//                     // to save the post to a database
//                     Navigator.pop(context); // Close the create post page
//                   },
//                   child: Text('Post'),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


