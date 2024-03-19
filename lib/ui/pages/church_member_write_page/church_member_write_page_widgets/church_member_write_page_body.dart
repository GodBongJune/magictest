import 'dart:io';

import 'package:church/core/constant/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/constant/color.dart';

class ChurchMemberWritePageBody extends StatefulWidget {
  const ChurchMemberWritePageBody({super.key});

  @override
  State<ChurchMemberWritePageBody> createState() =>
      _ChurchMemberWritePageBodyState();
}

class _ChurchMemberWritePageBodyState extends State<ChurchMemberWritePageBody> {
  final picker = ImagePicker();
  XFile? image; // 카메라로 촬영한 이미지를 저장할 변수
  List<XFile?> multiImage = []; // 갤러리에서 여러 장의 사진을 선택해서 저장할 변수
  List<XFile?> images = []; // 가져온 사진들을 보여주기 위한 변수

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: [
                Column(
                  children: [
                    Column(
                      children: [
                        TextFormField(
                          style: TextStyle(
                            decorationThickness: 0,
                            color: k3DColor,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "제목",
                            hintStyle: TextStyle(
                              color: k9DColor,
                              fontSize: size14,
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        Divider(color: k9DColor),
                        TextFormField(
                          maxLines: null,
                          style: TextStyle(
                            decorationThickness: 0,
                            color: k3DColor,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "내용을 입력하세요",
                            hintStyle: TextStyle(
                              color: k9DColor,
                              fontSize: size14,
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(16),
                          height: MediaQuery.of(context).size.height * 0.15,
                          child: GridView.builder(
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.all(0),
                            shrinkWrap: true,
                            itemCount: images.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1,
                              childAspectRatio: 1 / 1,
                              mainAxisSpacing: 10, //수평 Padding
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              // 사진 오른 쪽 위 삭제 버튼을 표시하기 위해 Stack을 사용함
                              return Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: FileImage(
                                                File(images[index]!.path)))),
                                  ),
                                  Container(
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          images.remove(images[index]);
                                        });
                                      },
                                      child: Icon(
                                        CupertinoIcons.xmark,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: () async {
                      multiImage = await picker.pickMultiImage();
                      setState(() {
                        images.addAll(multiImage);
                      });
                    },
                    child: Icon(
                      Icons.image_outlined,
                      size: MediaQuery.of(context).size.height * 0.05,
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  flex: 9,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.075,
                      decoration: BoxDecoration(
                        color: k3DColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          "등록",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: size16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
