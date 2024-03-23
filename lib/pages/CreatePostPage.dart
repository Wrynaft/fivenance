import 'package:flutter/material.dart';

class CreatePostPages extends StatelessWidget {
  const CreatePostPages({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Create Post Page',
      home: Scaffold(
        backgroundColor: Color(0xFF0C1C3C),
        appBar: AppBar(
          backgroundColor: Color(0xFF0C1C3C),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: Text('Create Post',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'AbhayaLibre',
                fontSize: 38.0,
                fontWeight: FontWeight.bold,
              )),
        ),
        body: CreatePostForm(),
      ),
    );
  }
}

class CreatePostForm extends StatefulWidget {
  @override
  _CreatePostFormState createState() => _CreatePostFormState();
}

class _CreatePostFormState extends State<CreatePostForm> {
  TextEditingController _textEditingController = TextEditingController();
  bool _showAttachments = false;

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
              controller: _textEditingController,
              decoration: InputDecoration(
                hintText: 'Share your thoughts...',
                hintStyle: TextStyle(color: Colors.white),
              ),
              maxLines: null,
              style: TextStyle(color: Colors.white)),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: Icon(Icons.attachment, size: 24.0),
                  onPressed: () {
                    setState(() {
                      _showAttachments = !_showAttachments;
                    });
                  },
                ),
              ),
            ],
          ),
          Visibility(
            visible: _showAttachments,
            child: Align(
              alignment: Alignment.centerRight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: Icon(Icons.image, size: 32.0),
                        onPressed: () {
                          // Implement image attachment logic here
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: Icon(Icons.video_collection, size: 32.0),
                        onPressed: () {
                          // Implement video attachment logic here
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: Icon(Icons.location_on, size: 32.0),
                        onPressed: () {
                          // Implement location attachment logic here
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 16.0),
          Spacer(),
          ElevatedButton(
            onPressed: () {
              String postContent = _textEditingController.text;
              // Implement post creation logic here using 'postContent'
              // For example, you can send the 'postContent' to an API
              // to save the post to a database
              Navigator.pop(context); // Close the create post page
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                Color.fromRGBO(73, 210, 129, 1.000),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text('Post',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'AbhayaLibre',
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
