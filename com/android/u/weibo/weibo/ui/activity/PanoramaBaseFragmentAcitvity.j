.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/activity/PanoramaBaseFragmentAcitvity
.super com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity

.method public <init>()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onDestroy()V
aload 0
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/unRegisterInstallReceiver(Landroid/content/Context;)V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/onDestroy()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onStart()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/onStart()V
aload 0
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/registerInstallReceiver(Landroid/app/Activity;)V
return
.limit locals 1
.limit stack 1
.end method
