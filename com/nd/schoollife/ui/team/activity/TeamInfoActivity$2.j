.bytecode 50.0
.class synchronized com/nd/schoollife/ui/team/activity/TeamInfoActivity$2
.super java/lang/Object
.implements com/nd/schoollife/ui/team/task/TeamTask$TeamTaskCallback
.enclosing method com/nd/schoollife/ui/team/activity/TeamInfoActivity/onGetTeamInfoTask()V
.inner class inner com/nd/schoollife/ui/team/activity/TeamInfoActivity$2
.inner class inner com/nd/schoollife/ui/team/activity/TeamInfoActivity$2$1

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;

.method <init>(Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/team/activity/TeamInfoActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onProcessPreExecute()V
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;
getstatic com/nd/schoollife/R$id/sv_team_info I
invokevirtual com/nd/schoollife/ui/team/activity/TeamInfoActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ScrollView
bipush 8
invokevirtual android/widget/ScrollView/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public transient onProcessingExecute([Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onProcessingPostExecute(Ljava/lang/Object;)V
aload 1
checkcast com/nd/android/forumsdk/business/bean/result/ResultGetTeamInfo
astore 4
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetTeamInfo/getResultCode()I
sipush 200
if_icmpne L0
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetTeamInfo/getSucc_list()Ljava/util/ArrayList;
ifnull L0
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetTeamInfo/getSucc_list()Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifle L0
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetTeamInfo/getSucc_list()Ljava/util/ArrayList;
iconst_0
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/android/forumsdk/business/bean/structure/GetTeamInfoSuccListBean
putfield com/nd/schoollife/ui/team/activity/TeamInfoActivity/teamInfo Lcom/nd/android/forumsdk/business/bean/structure/GetTeamInfoSuccListBean;
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity/teamInfo Lcom/nd/android/forumsdk/business/bean/structure/GetTeamInfoSuccListBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/GetTeamInfoSuccListBean/getAvatar()Ljava/lang/String;
invokestatic com/nd/schoollife/ui/common/util/TeamUtils/getTeamAvatarUrl(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 1
ifnull L1
aload 1
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L1
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 1
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity/civAvatar Lcom/nd/schoollife/ui/common/view/CircleImageView;
getstatic com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/imgLoaderOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
new com/nd/schoollife/ui/team/activity/TeamInfoActivity$2$1
dup
aload 0
invokespecial com/nd/schoollife/ui/team/activity/TeamInfoActivity$2$1/<init>(Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity$2;)V
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
L2:
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity/teamInfo Lcom/nd/android/forumsdk/business/bean/structure/GetTeamInfoSuccListBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/GetTeamInfoSuccListBean/getName()Ljava/lang/String;
astore 1
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;
getstatic com/nd/schoollife/R$id/tv_team_info_team_name I
invokevirtual com/nd/schoollife/ui/team/activity/TeamInfoActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity/teamInfo Lcom/nd/android/forumsdk/business/bean/structure/GetTeamInfoSuccListBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/GetTeamInfoSuccListBean/getCategory()[Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean;
astore 1
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;
getstatic com/nd/schoollife/R$id/tv_team_info_category I
invokevirtual com/nd/schoollife/ui/team/activity/TeamInfoActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 1
iconst_0
aaload
invokevirtual com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/getName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity/teamInfo Lcom/nd/android/forumsdk/business/bean/structure/GetTeamInfoSuccListBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/GetTeamInfoSuccListBean/getTags()[Lcom/nd/android/forumsdk/business/bean/structure/TagInfoBean;
astore 1
aload 1
arraylength
iconst_5
if_icmpge L3
aload 1
arraylength
istore 2
L4:
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;
invokestatic com/nd/schoollife/ui/team/activity/TeamInfoActivity/access$400(Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;)Lcom/nd/schoollife/ui/team/adapter/TeamTagList;
invokevirtual com/nd/schoollife/ui/team/adapter/TeamTagList/clear()V
iconst_0
istore 3
L5:
iload 3
iload 2
if_icmpge L6
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;
invokestatic com/nd/schoollife/ui/team/activity/TeamInfoActivity/access$400(Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;)Lcom/nd/schoollife/ui/team/adapter/TeamTagList;
aload 1
iload 3
aaload
invokevirtual com/nd/schoollife/ui/team/adapter/TeamTagList/addTagInfo(Lcom/nd/android/forumsdk/business/bean/structure/TagInfoBean;)I
pop
iload 3
iconst_1
iadd
istore 3
goto L5
L1:
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;
invokevirtual com/nd/schoollife/ui/team/activity/TeamInfoActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$drawable/ic_community_header I
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
checkcast android/graphics/drawable/BitmapDrawable
astore 1
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;
aload 1
invokevirtual android/graphics/drawable/BitmapDrawable/getBitmap()Landroid/graphics/Bitmap;
invokestatic com/nd/schoollife/ui/team/activity/TeamInfoActivity/access$300(Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;Landroid/graphics/Bitmap;)V
goto L2
L3:
iconst_5
istore 2
goto L4
L6:
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;
getstatic com/nd/schoollife/R$id/gv_team_info_signs I
invokevirtual com/nd/schoollife/ui/team/activity/TeamInfoActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/GridView
new com/nd/schoollife/ui/team/adapter/TagSelectGridviewAdapter
dup
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;
invokestatic com/nd/schoollife/ui/team/activity/TeamInfoActivity/access$400(Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;)Lcom/nd/schoollife/ui/team/adapter/TeamTagList;
invokespecial com/nd/schoollife/ui/team/adapter/TagSelectGridviewAdapter/<init>(Landroid/content/Context;Lcom/nd/schoollife/ui/team/adapter/TeamTagList;)V
invokevirtual android/widget/GridView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;
getstatic com/nd/schoollife/R$id/tv_team_info_intro I
invokevirtual com/nd/schoollife/ui/team/activity/TeamInfoActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity/teamInfo Lcom/nd/android/forumsdk/business/bean/structure/GetTeamInfoSuccListBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/GetTeamInfoSuccListBean/getIntro()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;
getstatic com/nd/schoollife/R$id/sv_team_info I
invokevirtual com/nd/schoollife/ui/team/activity/TeamInfoActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ScrollView
iconst_0
invokevirtual android/widget/ScrollView/setVisibility(I)V
L7:
return
L0:
aload 1
checkcast com/nd/android/forumsdk/business/bean/ForumResultBase
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getResultCode()I
bipush -100
if_icmpeq L7
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;
getstatic com/nd/schoollife/R$string/loading_faild I
invokevirtual com/nd/schoollife/ui/team/activity/TeamInfoActivity/getString(I)Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortToast(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 5
.limit stack 7
.end method
