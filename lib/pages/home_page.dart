import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/my_snackbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: CupertinoColors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    const Gap(12),
                    ClipOval(
                      child: Image.asset("assets/icon/profile_icon.png", fit: BoxFit.cover,
                      height: 120, width: 120,
                      ),
                    ),
                    const Gap(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("11-B Classmates", style: GoogleFonts.poppins(fontSize: 18,
                        fontWeight: FontWeight.bold, color: CupertinoColors.black)),
                        const SizedBox(width: 3),
                        const Icon(CupertinoIcons.checkmark_seal_fill, color: Colors.blue, size: 15)
                      ],
                    ),
                    Text("Izboskan tumani, 17-maktab 11-B sinf o'quvchilari\n web sahifasiga hush kelibsiz!",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: CupertinoColors.black, fontSize: 12
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Divider(),
                    ),
                    Container(
                      height: 260,
                      width: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.grey.shade300
                      ),
                      child: Column(
                        children: [
                          const Gap(20),
                          Text("Sinf haqida ma'lumot", style: GoogleFonts.poppins(
                            fontSize: 20, fontWeight: FontWeight.bold, color: CupertinoColors.systemGrey
                          )),
                          const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Divider(),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 14, right: 14, bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("O'quvchilar soni:", style: GoogleFonts.poppins(
                                  fontSize: 16, color: CupertinoColors.systemGrey
                                )),
                                Text("24", style: GoogleFonts.poppins(
                                    fontSize: 16, color: CupertinoColors.systemGrey
                                ))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 14, right: 14, bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("O'g'il bolalar soni:", style: GoogleFonts.poppins(
                                    fontSize: 16, color: CupertinoColors.systemGrey
                                )),
                                Text("13", style: GoogleFonts.poppins(
                                    fontSize: 16, color: CupertinoColors.systemGrey
                                ))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 14, right: 14, bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Qiz bolalar soni:", style: GoogleFonts.poppins(
                                    fontSize: 16, color: CupertinoColors.systemGrey
                                )),
                                Text("11", style: GoogleFonts.poppins(
                                    fontSize: 16, color: CupertinoColors.systemGrey
                                ))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 14, right: 14, bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Sinf rahbari:", style: GoogleFonts.poppins(
                                    fontSize: 16, color: CupertinoColors.systemGrey
                                )),
                                Text("Dehqonova M", style: GoogleFonts.poppins(
                                    fontSize: 16, color: CupertinoColors.systemGrey
                                ))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 14, right: 14, bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Sinf sardori:", style: GoogleFonts.poppins(
                                    fontSize: 16, color: CupertinoColors.systemGrey
                                )),
                                Text("Madaminov M", style: GoogleFonts.poppins(
                                    fontSize: 16, color: CupertinoColors.systemGrey
                                ))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const Gap(10),
                    Text("Bizni kuzatib boring!", style: GoogleFonts.poppins(
                      fontSize: 22, fontWeight: FontWeight.bold, color: CupertinoColors.black
                    )),
                    const Gap(8),
                    InkWell(
                      onTap: () {
                        _launchInstagram();
                      },
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      child: Container(
                        width: 300,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          color: CupertinoColors.systemPink
                        ),
                        child: Center(
                          child: Text("Instagram", style: GoogleFonts.poppins(
                             color: CupertinoColors.white, fontSize: 22
                          )),
                        ),
                      ),
                    ),
                    const Gap(8),
                    InkWell(
                      onTap: () {
                        _launchTikTok();
                      },
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      child: Container(
                        width: 300,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            color: CupertinoColors.black
                        ),
                        child: Center(
                          child: Text("Tik Tok", style: GoogleFonts.poppins(
                              color: CupertinoColors.white, fontSize: 22
                          )),
                        ),
                      ),
                    ),
                    const Gap(8),
                    InkWell(
                      onTap: () {
                        _launchTelegram();
                      },
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      child: Container(
                        width: 300,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            color: CupertinoColors.activeBlue
                        ),
                        child: Center(
                          child: Text("Telegram", style: GoogleFonts.poppins(
                              color: CupertinoColors.white, fontSize: 22
                          )),
                        ),
                      ),
                    ),
                    const Gap(10),
                    const Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Divider(),
                    ),
                    Text("Biz bilan aloqa:", style: GoogleFonts.poppins(
                        fontSize: 22, fontWeight: FontWeight.bold, color: CupertinoColors.black
                    )),
                    const Gap(10),
                    CopyableText('+998 94 103 43 05'),
                    CopyableText("+998 50 221 01 27"),
                    const Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Divider(),
                    ),
                    Text("Hamkorlar:", style: GoogleFonts.poppins(
                        fontSize: 22, fontWeight: FontWeight.bold, color: CupertinoColors.black
                    )),
                    const Gap(10),
                    ClipOval(
                      child: Image.asset("assets/images/o.png", fit: BoxFit.cover,
                      height: 100, width: 100 ),
                    ),
                    const Gap(5),
                    Text("Omadjon Madaminov", style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold, color: CupertinoColors.black, fontSize: 16
                    )),
                    Text("Thank you!", style: GoogleFonts.poppins(
                         color: CupertinoColors.black, fontSize: 12
                    )),
                    const Gap(10),
                    ClipOval(
                      child: Image.asset("assets/images/i.png", fit: BoxFit.cover,
                          height: 100, width: 100 ),
                    ),
                    const Gap(5),
                    Text("Iftixor Ergashboyev", style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold, color: CupertinoColors.black, fontSize: 16
                    )),
                    Text("Thank you!", style: GoogleFonts.poppins(
                        color: CupertinoColors.black, fontSize: 12
                    )),
                    const Gap(10),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 200,
                color: CupertinoColors.black,
                child: Column(
                  children: [
                    const Gap(10),
                    Center(
                      child: Text("Coder:", style: GoogleFonts.firaCode(
                        fontSize: 22, color: CupertinoColors.white
                      )),
                    ),
                    Text("Iftixor Ergashboyev", style: GoogleFonts.firaCode(
                        fontSize: 18, color: CupertinoColors.white
                    )),
                    const Gap(6),
                    InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        _launchDevTelegram();
                      },
                      child: Container(
                        width: 300,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: CupertinoColors.activeBlue,
                        ),
                        child: Center(
                          child: Text("Telegram", style: GoogleFonts.mPlusCodeLatin(
                            color: CupertinoColors.white, fontSize: 18
                          )),
                        ),
                      ),
                    ),
                    const Gap(25),
                    const Text("2024*", style: TextStyle(color: CupertinoColors.white),)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void _launchInstagram() async {
  const url = 'https://www.instagram.com/11b_classmates_team';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'not opening';
  }
}

void _launchTikTok() async {
  const url = 'https://www.tiktok.com/@11b_classmates_team?_t=8qrIFxu0BjM&_r=1';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'not opening';
  }
}

void _launchTelegram() async {
  const url = 'https://t.me/+VjnlkaFrZ_thNmJh';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'not opening';
  }
}

void _launchDevTelegram() async {
  const url = 'https://t.me/iftixor_ergashboyev';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'not opening';
  }
}

