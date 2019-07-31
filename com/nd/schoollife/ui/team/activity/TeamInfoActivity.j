.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/team/activity/TeamInfoActivity
.super com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity
.implements com/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener
.inner class inner com/nd/schoollife/ui/team/activity/TeamInfoActivity$1
.inner class inner com/nd/schoollife/ui/team/activity/TeamInfoActivity$2
.inner class inner com/nd/schoollife/ui/team/activity/TeamInfoActivity$2$1
.inner class private TeamInfoOnClickListener inner com/nd/schoollife/ui/team/activity/TeamInfoActivity$TeamInfoOnClickListener outer com/nd/schoollife/ui/team/activity/TeamInfoActivity
.inner class private TeamInfoOnTouchListener inner com/nd/schoollife/ui/team/activity/TeamInfoActivity$TeamInfoOnTouchListener outer com/nd/schoollife/ui/team/activity/TeamInfoActivity

.field private static final 'START_ALTER_TEAM_INTRO_REQUESTCODE' I = 2


.field private static final 'START_ALTER_TEAM_SIGN_REQUESTCODE' I = 3


.field private static final 'START_CHAGE_USR_IMG_POPMENU_REQUESTCODE' I = 1


.field 'civAvatar' Lcom/nd/schoollife/ui/common/view/CircleImageView;

.field private 'getImageUtil' Lcom/nd/schoollife/ui/common/util/GetImageUtil;

.field private 'isUpdatingAvatar' Z

.field private 'taglist' Lcom/nd/schoollife/ui/team/adapter/TeamTagList;

.field 'teamId' J

.field 'teamInfo' Lcom/nd/android/forumsdk/business/bean/structure/GetTeamInfoSuccListBean;

.field private 'teamInfoOnClickListener' Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity$TeamInfoOnClickListener;

.field private 'teamInfoOnTouchListener' Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity$TeamInfoOnTouchListener;

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/<init>()V
aload 0
aconst_null
putfield com/nd/schoollife/ui/team/activity/TeamInfoActivity/teamInfoOnTouchListener Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity$TeamInfoOnTouchListener;
aload 0
aconst_null
putfield com/nd/schoollife/ui/team/activity/TeamInfoActivity/teamInfoOnClickListener Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity$TeamInfoOnClickListener;
aload 0
aconst_null
putfield com/nd/schoollife/ui/team/activity/TeamInfoActivity/taglist Lcom/nd/schoollife/ui/team/adapter/TeamTagList;
aload 0
aconst_null
putfield com/nd/schoollife/ui/team/activity/TeamInfoActivity/getImageUtil Lcom/nd/schoollife/ui/common/util/GetImageUtil;
aload 0
iconst_0
putfield com/nd/schoollife/ui/team/activity/TeamInfoActivity/isUpdatingAvatar Z
aload 0
aconst_null
putfield com/nd/schoollife/ui/team/activity/TeamInfoActivity/teamInfo Lcom/nd/android/forumsdk/business/bean/structure/GetTeamInfoSuccListBean;
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$202(Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;Z)Z
aload 0
iload 1
putfield com/nd/schoollife/ui/team/activity/TeamInfoActivity/isUpdatingAvatar Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;Landroid/graphics/Bitmap;)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/team/activity/TeamInfoActivity/updateUserImage(Landroid/graphics/Bitmap;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;)Lcom/nd/schoollife/ui/team/adapter/TeamTagList;
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity/taglist Lcom/nd/schoollife/ui/team/adapter/TeamTagList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;)V
aload 0
invokespecial com/nd/schoollife/ui/team/activity/TeamInfoActivity/popChageImgMenu()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;)V
aload 0
invokespecial com/nd/schoollife/ui/team/activity/TeamInfoActivity/alterTeamSign()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;)V
aload 0
invokespecial com/nd/schoollife/ui/team/activity/TeamInfoActivity/alterTeamIntro()V
return
.limit locals 1
.limit stack 1
.end method

.method private alterTeamIntro()V
new android/content/Intent
dup
aload 0
ldc com/nd/schoollife/ui/team/activity/AlterTeamIntroActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "TEAM_INTRO"
aload 0
getstatic com/nd/schoollife/R$id/tv_team_info_intro I
invokevirtual com/nd/schoollife/ui/team/activity/TeamInfoActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
invokevirtual android/widget/TextView/getText()Ljava/lang/CharSequence;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;
pop
aload 1
ldc "LONG_TEAM_OR_COMMUNITY_ID"
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity/teamId J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 0
aload 1
iconst_2
invokevirtual com/nd/schoollife/ui/team/activity/TeamInfoActivity/startActivityForResult(Landroid/content/Intent;I)V
return
.limit locals 2
.limit stack 4
.end method

.method private alterTeamSign()V
new android/content/Intent
dup
aload 0
ldc com/nd/schoollife/ui/team/activity/AlterTeamSignActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 2
ldc "LONG_TEAM_OR_COMMUNITY_ID"
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity/teamId J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
iconst_0
istore 1
L0:
iload 1
iconst_5
if_icmpge L1
iload 1
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity/taglist Lcom/nd/schoollife/ui/team/adapter/TeamTagList;
invokevirtual com/nd/schoollife/ui/team/adapter/TeamTagList/size()I
if_icmpge L2
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "tagname"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity/taglist Lcom/nd/schoollife/ui/team/adapter/TeamTagList;
iload 1
invokevirtual com/nd/schoollife/ui/team/adapter/TeamTagList/getTagInfoByIndex(I)Lcom/nd/android/forumsdk/business/bean/structure/TagInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/TagInfoBean/getName()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "tagid"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity/taglist Lcom/nd/schoollife/ui/team/adapter/TeamTagList;
iload 1
invokevirtual com/nd/schoollife/ui/team/adapter/TeamTagList/getTagInfoByIndex(I)Lcom/nd/android/forumsdk/business/bean/structure/TagInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/TagInfoBean/getId()J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
L3:
iload 1
iconst_1
iadd
istore 1
goto L0
L2:
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "tagname"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc "none"
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
goto L3
L1:
aload 0
aload 2
iconst_3
invokevirtual com/nd/schoollife/ui/team/activity/TeamInfoActivity/startActivityForResult(Landroid/content/Intent;I)V
return
.limit locals 3
.limit stack 4
.end method

.method private onGetTeamInfoTask()V
new com/nd/schoollife/ui/team/activity/TeamInfoActivity$2
dup
aload 0
invokespecial com/nd/schoollife/ui/team/activity/TeamInfoActivity$2/<init>(Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;)V
astore 1
new com/nd/schoollife/ui/team/task/TeamTask
dup
aload 0
sipush 4097
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
aconst_null
aload 1
invokespecial com/nd/schoollife/ui/team/task/TeamTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;Lcom/nd/schoollife/ui/team/task/TeamTask$TeamTaskCallback;)V
iconst_1
anewarray java/lang/String
dup
iconst_0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity/teamId J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aastore
invokevirtual com/nd/schoollife/ui/team/task/TeamTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 2
.limit stack 7
.end method

.method private onUpdateUserImageTask(Landroid/graphics/Bitmap;)V
new com/nd/schoollife/ui/team/activity/TeamInfoActivity$1
dup
aload 0
aload 1
invokespecial com/nd/schoollife/ui/team/activity/TeamInfoActivity$1/<init>(Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;Landroid/graphics/Bitmap;)V
astore 1
new com/nd/schoollife/ui/team/task/TeamTask
dup
aload 0
sipush 4103
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_SUBMIT Lcom/nd/schoollife/ui/common/task/CallStyle;
aload 1
invokespecial com/nd/schoollife/ui/team/task/TeamTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/team/task/TeamTask$TeamTaskCallback;)V
iconst_2
anewarray java/lang/String
dup
iconst_0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity/teamId J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aastore
dup
iconst_1
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity/getImageUtil Lcom/nd/schoollife/ui/common/util/GetImageUtil;
invokevirtual com/nd/schoollife/ui/common/util/GetImageUtil/getCropImgUri()Landroid/net/Uri;
invokevirtual android/net/Uri/getPath()Ljava/lang/String;
aastore
invokevirtual com/nd/schoollife/ui/team/task/TeamTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 2
.limit stack 7
.end method

.method private popChageImgMenu()V
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity/isUpdatingAvatar Z
ifeq L0
return
L0:
iconst_4
newarray int
astore 3
aload 3
iconst_0
getstatic com/nd/schoollife/R$id/btn_chage_img_from_camera I
iastore
aload 3
iconst_1
getstatic com/nd/schoollife/R$id/btn_chage_img_from_photos I
iastore
aload 3
iconst_2
getstatic com/nd/schoollife/R$id/btn_chage_img_cancel I
iastore
aload 3
iconst_3
getstatic com/nd/schoollife/R$id/rl_chage_usr_img_popmenu I
iastore
getstatic com/nd/schoollife/R$layout/popmenu_change_usrimg I
istore 1
aload 3
arraylength
istore 2
aload 0
aload 0
iload 1
aload 3
iconst_4
newarray int
dup
iconst_0
iconst_1
iastore
dup
iconst_1
iconst_2
iastore
dup
iconst_2
iconst_0
iastore
dup
iconst_3
iconst_0
iastore
iload 2
invokestatic com/nd/schoollife/ui/team/view/PopMenuActivity/getPopMenuIntent(Landroid/content/Context;I[I[II)Landroid/content/Intent;
iconst_1
invokevirtual com/nd/schoollife/ui/team/activity/TeamInfoActivity/startActivityForResult(Landroid/content/Intent;I)V
return
.limit locals 4
.limit stack 8
.end method

.method private updateUserImage(Landroid/graphics/Bitmap;)V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
getstatic com/nd/schoollife/R$id/iv_team_avatar_bk_img I
invokevirtual com/nd/schoollife/ui/team/activity/TeamInfoActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
astore 2
L0:
aload 2
aload 1
bipush 10
invokestatic com/nd/schoollife/common/utils/ui/BlurUtil/blurFullBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
invokevirtual android/widget/ImageView/setImageBitmap(Landroid/graphics/Bitmap;)V
L1:
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity/civAvatar Lcom/nd/schoollife/ui/common/view/CircleImageView;
aload 1
invokevirtual com/nd/schoollife/ui/common/view/CircleImageView/setImageBitmap(Landroid/graphics/Bitmap;)V
return
L2:
astore 2
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
goto L1
.limit locals 3
.limit stack 3
.end method

.method protected initContentView()V
aload 0
getstatic com/nd/schoollife/R$layout/activity_team_info I
invokevirtual com/nd/schoollife/ui/team/activity/TeamInfoActivity/setContentView(I)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/civ_team_avatar I
invokevirtual com/nd/schoollife/ui/team/activity/TeamInfoActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/common/view/CircleImageView
putfield com/nd/schoollife/ui/team/activity/TeamInfoActivity/civAvatar Lcom/nd/schoollife/ui/common/view/CircleImageView;
aload 0
invokespecial com/nd/schoollife/ui/team/activity/TeamInfoActivity/onGetTeamInfoTask()V
return
.limit locals 1
.limit stack 3
.end method

.method protected initData(Landroid/os/Bundle;)V
aload 0
aload 0
invokevirtual com/nd/schoollife/ui/team/activity/TeamInfoActivity/getIntent()Landroid/content/Intent;
ldc "LONG_TEAM_OR_COMMUNITY_ID"
lconst_0
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
putfield com/nd/schoollife/ui/team/activity/TeamInfoActivity/teamId J
aload 0
new com/nd/schoollife/ui/team/activity/TeamInfoActivity$TeamInfoOnTouchListener
dup
aload 0
aconst_null
invokespecial com/nd/schoollife/ui/team/activity/TeamInfoActivity$TeamInfoOnTouchListener/<init>(Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity$1;)V
putfield com/nd/schoollife/ui/team/activity/TeamInfoActivity/teamInfoOnTouchListener Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity$TeamInfoOnTouchListener;
aload 0
new com/nd/schoollife/ui/team/activity/TeamInfoActivity$TeamInfoOnClickListener
dup
aload 0
aconst_null
invokespecial com/nd/schoollife/ui/team/activity/TeamInfoActivity$TeamInfoOnClickListener/<init>(Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity$1;)V
putfield com/nd/schoollife/ui/team/activity/TeamInfoActivity/teamInfoOnClickListener Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity$TeamInfoOnClickListener;
aload 0
new com/nd/schoollife/ui/team/adapter/TeamTagList
dup
invokespecial com/nd/schoollife/ui/team/adapter/TeamTagList/<init>()V
putfield com/nd/schoollife/ui/team/activity/TeamInfoActivity/taglist Lcom/nd/schoollife/ui/team/adapter/TeamTagList;
aload 0
new com/nd/schoollife/ui/common/util/GetImageUtil
dup
aload 0
aload 1
invokespecial com/nd/schoollife/ui/common/util/GetImageUtil/<init>(Landroid/content/Context;Landroid/os/Bundle;)V
putfield com/nd/schoollife/ui/team/activity/TeamInfoActivity/getImageUtil Lcom/nd/schoollife/ui/common/util/GetImageUtil;
return
.limit locals 2
.limit stack 5
.end method

.method protected initEvent()V
aload 0
getstatic com/nd/schoollife/R$id/rl_team_info_sign I
invokevirtual com/nd/schoollife/ui/team/activity/TeamInfoActivity/findViewById(I)Landroid/view/View;
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity/teamInfoOnTouchListener Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity$TeamInfoOnTouchListener;
invokevirtual android/view/View/setOnTouchListener(Landroid/view/View$OnTouchListener;)V
aload 0
getstatic com/nd/schoollife/R$id/rl_team_info_intro I
invokevirtual com/nd/schoollife/ui/team/activity/TeamInfoActivity/findViewById(I)Landroid/view/View;
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity/teamInfoOnTouchListener Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity$TeamInfoOnTouchListener;
invokevirtual android/view/View/setOnTouchListener(Landroid/view/View$OnTouchListener;)V
aload 0
getstatic com/nd/schoollife/R$id/gv_team_info_signs I
invokevirtual com/nd/schoollife/ui/team/activity/TeamInfoActivity/findViewById(I)Landroid/view/View;
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity/teamInfoOnTouchListener Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity$TeamInfoOnTouchListener;
invokevirtual android/view/View/setOnTouchListener(Landroid/view/View$OnTouchListener;)V
aload 0
getstatic com/nd/schoollife/R$id/btn_common_head_back I
invokevirtual com/nd/schoollife/ui/team/activity/TeamInfoActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity/teamInfoOnClickListener Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity$TeamInfoOnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity/civAvatar Lcom/nd/schoollife/ui/common/view/CircleImageView;
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity/teamInfoOnClickListener Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity$TeamInfoOnClickListener;
invokevirtual com/nd/schoollife/ui/common/view/CircleImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
invokevirtual com/nd/schoollife/ui/team/activity/TeamInfoActivity/setOnReloadClickListener(Lcom/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method protected initHeadView(Landroid/content/Context;)Landroid/view/View;
aload 1
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/schoollife/R$layout/common_head I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 1
aload 1
getstatic com/nd/schoollife/R$id/tv_common_head_title I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
getstatic com/nd/schoollife/R$string/team_info I
invokevirtual android/widget/TextView/setText(I)V
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
iload 1
iconst_2
if_icmpne L0
iload 2
iconst_1
if_icmpne L0
aload 0
invokespecial com/nd/schoollife/ui/team/activity/TeamInfoActivity/onGetTeamInfoTask()V
L0:
iload 1
iconst_3
if_icmpne L1
iload 2
iconst_1
if_icmpne L1
aload 0
invokespecial com/nd/schoollife/ui/team/activity/TeamInfoActivity/onGetTeamInfoTask()V
L1:
iload 1
iconst_1
if_icmpne L2
iload 2
tableswitch 0
L3
L4
L5
default : L3
L3:
aload 0
iload 1
iload 2
aload 3
invokespecial com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/onActivityResult(IILandroid/content/Intent;)V
return
L4:
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity/getImageUtil Lcom/nd/schoollife/ui/common/util/GetImageUtil;
invokevirtual com/nd/schoollife/ui/common/util/GetImageUtil/doTakePhoto()V
goto L3
L5:
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity/getImageUtil Lcom/nd/schoollife/ui/common/util/GetImageUtil;
invokevirtual com/nd/schoollife/ui/common/util/GetImageUtil/doPickPhotoFromGallery()V
goto L3
L2:
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity/getImageUtil Lcom/nd/schoollife/ui/common/util/GetImageUtil;
iload 1
iload 2
aload 3
invokevirtual com/nd/schoollife/ui/common/util/GetImageUtil/onActivityResult(IILandroid/content/Intent;)Landroid/graphics/Bitmap;
astore 4
aload 4
ifnull L3
aload 0
aload 4
invokespecial com/nd/schoollife/ui/team/activity/TeamInfoActivity/onUpdateUserImageTask(Landroid/graphics/Bitmap;)V
goto L3
.limit locals 5
.limit stack 4
.end method

.method public onReloadClicked()V
aload 0
invokespecial com/nd/schoollife/ui/team/activity/TeamInfoActivity/onGetTeamInfoTask()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity/getImageUtil Lcom/nd/schoollife/ui/common/util/GetImageUtil;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity/getImageUtil Lcom/nd/schoollife/ui/common/util/GetImageUtil;
aload 1
invokevirtual com/nd/schoollife/ui/common/util/GetImageUtil/onSaveInstanceState(Landroid/os/Bundle;)V
L0:
aload 0
aload 1
invokespecial com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/onSaveInstanceState(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 2
.end method
