.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Long;Ljava/lang/Void;Ljava/lang/Boolean;>;"
.inner class private MoreActionTask inner com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask outer com/android/u/weibo/weibo/ui/activity/TweetProfileActivity

.field public static final 'ACTION_ADD_TO_BLACKLIST' I = 2


.field public static final 'ACTION_FOLLOW' I = 1


.field public static final 'ACTION_REMOVE_FORM_BLACKLIST' I = 3


.field public static final 'ACTION_UNFOLLOW' I = 0


.field public 'isFollowing' Z

.field private 'mErrorMsg' Ljava/lang/StringBuilder;

.field private 'mWeiBoManager' Lcom/android/u/weibo/weibo/controller/Manager;

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;

.field private 'type' I

.method public <init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;I)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
aload 0
aload 1
invokestatic com/android/u/weibo/weibo/controller/Manager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/Manager;
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/mWeiBoManager Lcom/android/u/weibo/weibo/controller/Manager;
aload 0
iload 2
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/type I
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/mErrorMsg Ljava/lang/StringBuilder;
return
.limit locals 3
.limit stack 3
.end method

.method protected transient doInBackground([Ljava/lang/Long;)Ljava/lang/Boolean;
.catch com/android/u/weibo/weibo/controller/WeiBoException from L0 to L1 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L3 to L4 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L5 to L6 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L7 to L8 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L9 to L10 using L11
.catch com/android/u/weibo/weibo/controller/WeiBoException from L12 to L13 using L11
.catch com/android/u/weibo/weibo/controller/WeiBoException from L14 to L15 using L11
.catch com/android/u/weibo/weibo/controller/WeiBoException from L16 to L17 using L11
iconst_0
istore 4
iconst_0
istore 5
iconst_0
istore 3
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/type I
ifne L18
new java/util/ArrayList
dup
iconst_1
invokespecial java/util/ArrayList/<init>(I)V
astore 6
aload 6
aload 1
iconst_0
aaload
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 4
istore 3
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/mWeiBoManager Lcom/android/u/weibo/weibo/controller/Manager;
aload 6
invokevirtual com/android/u/weibo/weibo/controller/Manager/unFollow(Ljava/util/ArrayList;)Z
istore 4
L1:
iload 4
ifeq L19
iload 4
istore 3
L3:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/mErrorMsg Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
getstatic com/android/u/weibo/R$string/unfollow_success I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L4:
iload 4
istore 3
L5:
aload 1
iconst_0
aaload
invokevirtual java/lang/Long/longValue()J
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/mErrorMsg Ljava/lang/StringBuilder;
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/relieveFriend(JLjava/lang/StringBuilder;)Z
pop
L6:
iload 4
istore 3
L20:
iload 3
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
areturn
L19:
iload 4
istore 3
L7:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/mErrorMsg Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
getstatic com/android/u/weibo/R$string/unfollow_error I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L8:
iload 4
istore 3
goto L20
L2:
astore 1
aload 1
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/getMessage()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L21
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/mErrorMsg Ljava/lang/StringBuilder;
aload 1
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L20
L21:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/mErrorMsg Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
getstatic com/android/u/weibo/R$string/unfollow_error I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L20
L18:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/type I
iconst_1
if_icmpne L22
new java/util/ArrayList
dup
iconst_1
invokespecial java/util/ArrayList/<init>(I)V
astore 6
aload 6
aload 1
iconst_0
aaload
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 5
istore 3
L9:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/mWeiBoManager Lcom/android/u/weibo/weibo/controller/Manager;
aload 6
iconst_1
invokevirtual com/android/u/weibo/weibo/controller/Manager/follow(Ljava/util/ArrayList;Z)Z
istore 4
L10:
iload 4
ifeq L23
iload 4
istore 3
L12:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/mErrorMsg Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
getstatic com/android/u/weibo/R$string/follow_success I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L13:
iload 4
istore 3
L14:
aload 1
iconst_0
aaload
invokevirtual java/lang/Long/longValue()J
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/mErrorMsg Ljava/lang/StringBuilder;
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/addFriend(JLjava/lang/StringBuilder;)Z
pop
L15:
iload 4
istore 3
goto L20
L11:
astore 1
aload 1
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/getMessage()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L24
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/mErrorMsg Ljava/lang/StringBuilder;
aload 1
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L20
L23:
iload 4
istore 3
L16:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/mErrorMsg Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
getstatic com/android/u/weibo/R$string/follow_error I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L17:
iload 4
istore 3
goto L20
L24:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/mErrorMsg Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
getstatic com/android/u/weibo/R$string/follow_error I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L20
L22:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/type I
iconst_2
if_icmpne L25
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$2900(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
getfield com/android/u/weibo/weibo/business/bean/UserPageInfo/is_following Z
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/isFollowing Z
aload 1
iconst_0
aaload
invokevirtual java/lang/Long/longValue()J
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/addToBlackList(J)Z
istore 3
getstatic com/android/u/weibo/R$string/add_blacklist_error I
istore 2
iload 3
ifeq L26
getstatic com/android/u/weibo/R$string/add_blacklist_sucess I
istore 2
L26:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/mErrorMsg Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
iload 2
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L20
L25:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/type I
iconst_3
if_icmpne L20
aload 1
iconst_0
aaload
invokevirtual java/lang/Long/longValue()J
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/delFromBlackList(J)Z
istore 3
getstatic com/android/u/weibo/R$string/delete_blacklist_error I
istore 2
iload 3
ifeq L27
getstatic com/android/u/weibo/R$string/delete_blacklist_success I
istore 2
L27:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/mErrorMsg Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
iload 2
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L20
.limit locals 7
.limit stack 3
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Long;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/doInBackground([Ljava/lang/Long;)Ljava/lang/Boolean;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/mErrorMsg Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
aload 1
invokevirtual java/lang/Boolean/booleanValue()Z
ifne L0
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/type I
ifne L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$2900(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
iconst_0
putfield com/android/u/weibo/weibo/business/bean/UserPageInfo/is_following Z
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$3500(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
getstatic com/android/u/weibo/R$string/following_ta I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$3600(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)V
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/isQuickClick Z
return
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/type I
iconst_1
if_icmpne L3
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$2900(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
iconst_1
putfield com/android/u/weibo/weibo/business/bean/UserPageInfo/is_following Z
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$3500(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
getstatic com/android/u/weibo/R$string/unfollow I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$2900(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$2900(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
getfield com/android/u/weibo/weibo/business/bean/UserPageInfo/fans I
iconst_1
iadd
putfield com/android/u/weibo/weibo/business/bean/UserPageInfo/fans I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$2500(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/android/u/weibo/weibo/ui/fragment/HomePageTabFragment;
ifnull L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$2500(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/android/u/weibo/weibo/ui/fragment/HomePageTabFragment;
iconst_1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$2900(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
getfield com/android/u/weibo/weibo/business/bean/UserPageInfo/fans I
invokevirtual com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/updateFollower(II)V
goto L2
L3:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/type I
iconst_2
if_icmpne L4
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
iconst_1
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$3002(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Z)Z
pop
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/isFollowing Z
ifeq L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$2900(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
iconst_0
putfield com/android/u/weibo/weibo/business/bean/UserPageInfo/is_following Z
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$3500(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
getstatic com/android/u/weibo/R$string/following_ta I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$3600(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)V
goto L2
L4:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/type I
iconst_3
if_icmpne L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
iconst_0
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$3002(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Z)Z
pop
goto L2
.limit locals 2
.limit stack 3
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/lang/Boolean
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/onPostExecute(Ljava/lang/Boolean;)V
return
.limit locals 2
.limit stack 2
.end method
