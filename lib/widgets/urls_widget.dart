import 'package:url_launcher/url_launcher.dart';

void _launchInstagram() async {
  const url = 'https://www.instagram.com/11b_classmates_team';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'not opening';
  }
}

void _launchTikTok() async {
  const url = 'https://www.instagram.com/11b_classmates_team';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'not opening';
  }
}

void _launchTelegram() async {
  const url = 'https://t.me/+d7SQKigd5GozMjVh';
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
