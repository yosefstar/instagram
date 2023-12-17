import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  MyPage({Key? key}) : super(key: key);

  final images = [
    'https://imaizumisc.or.jp/mens/wp-content/uploads/2018/08/0036-2.jpg',
    'https://imaizumisc.or.jp/mens/wp-content/uploads/2018/08/0036-2.jpg',
    'https://imaizumisc.or.jp/mens/wp-content/uploads/2018/08/0036-2.jpg',
    'https://imaizumisc.or.jp/mens/wp-content/uploads/2018/08/0036-2.jpg',
    'https://imaizumisc.or.jp/mens/wp-content/uploads/2018/08/0036-2.jpg',
    'https://imaizumisc.or.jp/mens/wp-content/uploads/2018/08/0036-2.jpg',
    'https://imaizumisc.or.jp/mens/wp-content/uploads/2018/08/0036-2.jpg',
    'https://imaizumisc.or.jp/mens/wp-content/uploads/2018/08/0036-2.jpg',
    'https://imaizumisc.or.jp/mens/wp-content/uploads/2018/08/0036-2.jpg',
    'https://imaizumisc.or.jp/mens/wp-content/uploads/2018/08/0036-2.jpg',
    'https://imaizumisc.or.jp/mens/wp-content/uploads/2018/08/0036-2.jpg',
    'https://imaizumisc.or.jp/mens/wp-content/uploads/2018/08/0036-2.jpg',
    'https://imaizumisc.or.jp/mens/wp-content/uploads/2018/08/0036-2.jpg',
    'https://imaizumisc.or.jp/mens/wp-content/uploads/2018/08/0036-2.jpg',
    'https://imaizumisc.or.jp/mens/wp-content/uploads/2018/08/0036-2.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('マイページ')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Instagram_icon.png/600px-Instagram_icon.png?20200512141346',
                    width: 60,
                    height: 60,
                  ),
                  const Spacer(),
                  const Column(
                    children: [
                      Text(
                        '7,041',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text('投稿'),
                    ],
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const Column(
                    children: [
                      Text(
                        '4.6億',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text('フォロワー'),
                    ],
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const Column(
                    children: [
                      Text(
                        '99',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text('フォロー中'),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Instagram',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const Text(
                    '#YoursToMake',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  const Text(
                    'help.instagram.com',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {},
                            child: Text(
                              'フォロー中',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(4), // 任意の半径を指定
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {},
                            child: Text(
                              'メッセージ',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(4), // 任意の半径を指定
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Icon(Icons.keyboard_arrow_down),
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4), // 任意の半径を指定
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              primary: false,
              crossAxisCount: 3,
              children: images.map((imageUrl) {
                return InstagramPostItem(imageUrl: (imageUrl));
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}

class InstagramPostItem extends StatelessWidget {
  const InstagramPostItem({Key? key, required this.imageUrl}) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      fit: BoxFit.cover,
      imageUrl,
    );
  }
}
