.bytecode 50.0
.class synchronized com/nd/schoollife/ui/square/view/BannerView$BannerListAdapter
.super android/support/v4/view/PagerAdapter
.inner class private BannerListAdapter inner com/nd/schoollife/ui/square/view/BannerView$BannerListAdapter outer com/nd/schoollife/ui/square/view/BannerView
.inner class inner com/nd/schoollife/ui/square/view/BannerView$BannerListAdapter$1

.field private 'mDataList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/schoollife/common/bean/structure/BannerItemBean;>;"

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/square/view/BannerView;

.method public <init>(Lcom/nd/schoollife/ui/square/view/BannerView;Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/schoollife/common/bean/structure/BannerItemBean;>;)V"
aload 0
aload 1
putfield com/nd/schoollife/ui/square/view/BannerView$BannerListAdapter/this$0 Lcom/nd/schoollife/ui/square/view/BannerView;
aload 0
invokespecial android/support/v4/view/PagerAdapter/<init>()V
aload 0
aload 2
putfield com/nd/schoollife/ui/square/view/BannerView$BannerListAdapter/mDataList Ljava/util/List;
return
.limit locals 3
.limit stack 2
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
aload 1
aload 3
checkcast android/view/View
invokevirtual android/view/ViewGroup/removeView(Landroid/view/View;)V
return
.limit locals 4
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView$BannerListAdapter/mDataList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
bipush -2
ireturn
.limit locals 2
.limit stack 1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView$BannerListAdapter/this$0 Lcom/nd/schoollife/ui/square/view/BannerView;
invokestatic com/nd/schoollife/ui/square/view/BannerView/access$300(Lcom/nd/schoollife/ui/square/view/BannerView;)Landroid/view/LayoutInflater;
getstatic com/nd/schoollife/R$layout/square_banner_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 3
aload 3
getstatic com/nd/schoollife/R$id/tv_square_banner_item I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 6
aload 3
getstatic com/nd/schoollife/R$id/iv_square_banner_item I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
astore 4
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView$BannerListAdapter/mDataList Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/schoollife/common/bean/structure/BannerItemBean
astore 5
aload 4
ldc_w 805306368
invokevirtual android/widget/ImageView/setBackgroundColor(I)V
aload 6
aload 5
invokevirtual com/nd/schoollife/common/bean/structure/BannerItemBean/getName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
ldc "community"
aload 5
invokevirtual com/nd/schoollife/common/bean/structure/BannerItemBean/getType()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 6
aload 6
ldc "COOKIE"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "PHPSESSID="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getLocalSid()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 5
invokevirtual com/nd/schoollife/common/bean/structure/BannerItemBean/getScope_id()J
aload 5
invokevirtual com/nd/schoollife/common/bean/structure/BannerItemBean/getAvatar()Ljava/lang/String;
invokestatic com/nd/schoollife/ui/common/util/CommunityUtils/getAvatarPathByKey(JLjava/lang/String;)Ljava/lang/String;
aload 4
getstatic com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/imgLoaderOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aconst_null
aload 6
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Ljava/util/HashMap;)V
L1:
aload 3
getstatic com/nd/schoollife/R$id/rl_square_banner_item I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
new com/nd/schoollife/ui/square/view/BannerView$BannerListAdapter$1
dup
aload 0
aload 5
invokespecial com/nd/schoollife/ui/square/view/BannerView$BannerListAdapter$1/<init>(Lcom/nd/schoollife/ui/square/view/BannerView$BannerListAdapter;Lcom/nd/schoollife/common/bean/structure/BannerItemBean;)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 1
aload 3
invokevirtual android/view/ViewGroup/addView(Landroid/view/View;)V
aload 3
areturn
L0:
ldc "team"
aload 5
invokevirtual com/nd/schoollife/common/bean/structure/BannerItemBean/getType()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 5
invokevirtual com/nd/schoollife/common/bean/structure/BannerItemBean/getAvatar()Ljava/lang/String;
iconst_0
invokestatic com/nd/schoollife/ui/common/util/TeamUtils/getTeamAvatarUrl(Ljava/lang/String;I)Ljava/lang/String;
aload 4
getstatic com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/imgLoaderOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
goto L1
L2:
ldc "senior"
aload 5
invokevirtual com/nd/schoollife/common/bean/structure/BannerItemBean/getType()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
aload 4
getstatic com/nd/schoollife/R$drawable/banner_senior I
invokevirtual android/widget/ImageView/setImageResource(I)V
goto L1
L3:
ldc "unicom_flow"
aload 5
invokevirtual com/nd/schoollife/common/bean/structure/BannerItemBean/getType()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 4
getstatic com/nd/schoollife/R$drawable/banner_unicom_flow I
invokevirtual android/widget/ImageView/setImageResource(I)V
goto L1
.limit locals 7
.limit stack 6
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
aload 1
aload 2
if_acmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method
