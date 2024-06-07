import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget FollowButton() {
  return Container(
    padding: const EdgeInsets.all(3),
    decoration: BoxDecoration(
        border: Border.all(color: Colors.teal, width: 2),
        borderRadius: BorderRadius.circular(10)),
    child: const Text(
      "Follow",
      style: TextStyle(
          fontFamily: 'Location Font',
          color: Colors.teal,
          fontWeight: FontWeight.w600,
          fontSize: 11),
    ),
  );
}

// ignore: non_constant_identifier_names
Widget GuidesTripButton(String type) {
  return Container(
    padding: const EdgeInsets.fromLTRB(10, 3, 10, 3),
    decoration: BoxDecoration(
        color: Colors.white70, borderRadius: BorderRadius.circular(10)),
    child: Text(
      type,
      style: const TextStyle(
          fontFamily: 'Location Font',
          color: Colors.teal,
          fontWeight: FontWeight.w900,
          fontSize: 11),
    ),
  );
}

// ignore: non_constant_identifier_names
Widget PostModel(BuildContext context, List<String> images, String username,
    String location, String description, String time, String storyImage) {
  return Container(
    padding: const EdgeInsets.only(right: 15, left: 15),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const Icon(
              Icons.location_on,
              color: Colors.teal,
            ),
            Text(
              location,
              style: const TextStyle(
                  fontFamily: 'Location Font',
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 300,
          child: Row(
            children: [
              SizedBox(
                height: 400,
                width: MediaQuery.of(context).size.width / 2,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      topLeft: Radius.circular(10)),
                  child: Image.asset(
                    images[0],
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10)),
                      child: Image.asset(
                        images[2],
                        fit: BoxFit.fitHeight,
                        height: 148,
                        width: MediaQuery.of(context).size.width / 2,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(10)),
                      child: Image.asset(
                        images[1],
                        fit: BoxFit.cover,
                        height: 148,
                        width: MediaQuery.of(context).size.width / 2,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              child: ClipOval(
                child: Image.asset(
                  storyImage,
                  fit: BoxFit.cover,
                  width: 40,
                  height: 40,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Text(
                  username,
                  style: const TextStyle(
                      fontFamily: 'Location Font', fontWeight: FontWeight.w600),
                ),
                Text(
                  time,
                  style: const TextStyle(
                      fontFamily: 'Location Font', fontSize: 12),
                )
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            FollowButton(),
            const SizedBox(
              width: 90,
            ),
            const Icon(
              (Icons.favorite_outline),
              color: Colors.red,
            ),
            const SizedBox(
              width: 5,
            ),
            const Text(
              '134',
              style: TextStyle(fontFamily: 'Location Font', fontSize: 11),
            ),
            const SizedBox(
              width: 10,
            ),
            const Icon(
              (Icons.mode_comment_outlined),
              color: Colors.teal,
            ),
            const SizedBox(
              width: 5,
            ),
            const Text(
              '14',
              style: TextStyle(fontFamily: 'Location Font', fontSize: 11),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: description,
                style: const TextStyle(
                    fontFamily: 'Location Font',
                    fontSize: 13,
                    color: Colors.black),
              ),
              const TextSpan(
                text: '...More',
                style: TextStyle(
                    fontFamily: 'Location Font',
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    ),
  );
}

// ignore: non_constant_identifier_names
Widget GuideModel(BuildContext context, List<String> images, String username,
    String title, String description, String storyImage) {
  return Container(
    padding: const EdgeInsets.only(right: 15, left: 15),
    child: Stack(
      children: [
        SizedBox(
          height: 300,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: Image.asset(
              images[0],
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          left: 10,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GuidesTripButton('Guides'),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                      fontFamily: 'Location Font',
                      // fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    description,
                    style: const TextStyle(
                        fontFamily: 'Location Font',
                        fontSize: 13,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    child: ClipOval(
                      child: Image.asset(
                        storyImage,
                        fit: BoxFit.cover,
                        width: 40,
                        height: 40,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    username,
                    style: const TextStyle(
                      fontFamily: 'Location Font',
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  FollowButton(),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

// ignore: non_constant_identifier_names
Widget TripModel(BuildContext context, List<String> images, String username,
    String location, String description, String storyImage) {
  return Container(
    padding: const EdgeInsets.only(right: 15, left: 15, top: 10),
    child: Stack(
      children: [
        SizedBox(
          height: 300,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: Image.asset(
              images[0],
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          left: 10,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GuidesTripButton('Trip'),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    description,
                    style: const TextStyle(
                      fontFamily: 'Location Font',
                      // fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: Colors.teal,
                      ),
                      Text(
                        location,
                        style: const TextStyle(
                            fontFamily: 'Location Font',
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    child: ClipOval(
                      child: Image.asset(
                        storyImage,
                        fit: BoxFit.cover,
                        width: 40,
                        height: 40,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    username,
                    style: const TextStyle(
                      fontFamily: 'Location Font',
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  FollowButton(),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
