// import 'dart:developer';

import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
import '../models/articel_model.dart';

// cached network image
class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});

  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // GestureDetector(
        //   onTap: () async {
        //     log(articleModel.url);
        //     try {
        //       await canLaunchUrl(Uri.parse(articleModel.url))
        //           ? launchUrl(Uri.parse(articleModel.url))
        //           : throw 'Could not launch Url';
        //     } catch (e) {
        //       log(e.toString());
        //     }
        //   },
        //   child:
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              articleModel.image ??
                  'https://th.bing.com/th/id/OIP.INPpSEawMXupgem00-zauwHaFj?pid=ImgDet&rs=1',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        // ),
        const SizedBox(
          height: 12,
        ),
        Text(
            articleModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        
        const SizedBox(
          height: 8,
        ),
        Text(
          articleModel.subTitle ?? '',
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}
