import 'package:flutter/scheduler.dart';

class Durations {
  // common animations
  static const iconAnimation = Duration(milliseconds: 300);
  static const opToastAnimation = Duration(milliseconds: 600);
  static const sweeperOpacityAnimation = Duration(milliseconds: 150);
  static const sweepingAnimation = Duration(milliseconds: 650);
  static const popupMenuAnimation = Duration(milliseconds: 300); // ref _PopupMenuRoute._kMenuDuration
  static const dialogTransitionAnimation = Duration(milliseconds: 150); // ref `transitionDuration` in `showDialog()`

  static const staggeredAnimation = Duration(milliseconds: 375);
  static const dialogFieldReachAnimation = Duration(milliseconds: 300);

  static const appBarTitleAnimation = Duration(milliseconds: 300);
  static const appBarActionChangeAnimation = Duration(milliseconds: 200);

  // filter grids animations
  static const chipDecorationAnimation = Duration(milliseconds: 200);

  // collection animations
  static const filterBarRemovalAnimation = Duration(milliseconds: 400);
  static const collectionOpOverlayAnimation = Duration(milliseconds: 300);
  static const collectionScalingBackgroundAnimation = Duration(milliseconds: 200);
  static const sectionHeaderAnimation = Duration(milliseconds: 200);
  static const thumbnailTransition = Duration(milliseconds: 200);
  static const thumbnailOverlayAnimation = Duration(milliseconds: 200);

  // search animations
  static const filterRowExpandAnimation = Duration(milliseconds: 300);

  // viewer animations
  static const viewerPageAnimation = Duration(milliseconds: 300);
  static const viewerOverlayAnimation = Duration(milliseconds: 200);
  static const viewerOverlayChangeAnimation = Duration(milliseconds: 150);
  static const viewerOverlayPageChooserAnimation = Duration(milliseconds: 200);

  // info
  static const mapStyleSwitchAnimation = Duration(milliseconds: 300);
  static const xmpStructArrayCardTransition = Duration(milliseconds: 300);

  // delays & refresh intervals
  static const opToastDisplay = Duration(seconds: 2);
  static const collectionScrollMonitoringTimerDelay = Duration(milliseconds: 100);
  static const collectionScalingCompleteNotificationDelay = Duration(milliseconds: 300);
  static const videoProgressTimerInterval = Duration(milliseconds: 300);
  static Duration staggeredAnimationDelay = Durations.staggeredAnimation ~/ 6 * timeDilation;
  static const doubleBackTimerDelay = Duration(milliseconds: 1000);
  static const softKeyboardDisplayDelay = Duration(milliseconds: 300);
  static const searchDebounceDelay = Duration(milliseconds: 250);

  // Content change monitoring delay should be large enough,
  // so that querying the Media Store yields final entries.
  // For example, when taking a picture with a Galaxy S10e default camera app,
  // querying the Media Store just 1 second after sometimes yields an entry with
  // its temporary path: `/data/sec/camera/!@#$%^..._temp.jpg`
  static const contentChangeDebounceDelay = Duration(milliseconds: 1500);
}
