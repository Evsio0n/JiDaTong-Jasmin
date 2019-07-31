.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/ui/adapter/AppAdapter
.super android/widget/BaseAdapter
.implements com/nd/android/u/cloud/cache/ProfileAppMenuCacheCallback
.inner class Holder inner com/nd/android/u/cloud/ui/adapter/AppAdapter$Holder outer com/nd/android/u/cloud/ui/adapter/AppAdapter

.field public static final 'F64' Ljava/lang/String; = "f64"

.field private static final 'TAG' Ljava/lang/String; = "AppAdapter"

.field private final 'HR_ENTRANCE_IMG_COUNT' I

.field private 'holdPosition' I

.field public 'mAppList' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/contact/OapApp;>;"

.field private 'mContext' Landroid/content/Context;

.field private 'mbHRRecognizeEntrance' Z

.field private 'mlistHRMates' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/product/android/ui/waterfall/FlowTag;>;"

.field private 'showItem' Z

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
iconst_4
putfield com/nd/android/u/cloud/ui/adapter/AppAdapter/HR_ENTRANCE_IMG_COUNT I
aload 0
aconst_null
putfield com/nd/android/u/cloud/ui/adapter/AppAdapter/mAppList Ljava/util/List;
aload 0
iconst_m1
putfield com/nd/android/u/cloud/ui/adapter/AppAdapter/holdPosition I
aload 0
iconst_0
putfield com/nd/android/u/cloud/ui/adapter/AppAdapter/showItem Z
aload 0
iconst_0
putfield com/nd/android/u/cloud/ui/adapter/AppAdapter/mbHRRecognizeEntrance Z
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/adapter/AppAdapter/mContext Landroid/content/Context;
aload 0
new java/util/Vector
dup
invokespecial java/util/Vector/<init>()V
putfield com/nd/android/u/cloud/ui/adapter/AppAdapter/mAppList Ljava/util/List;
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
aload 0
ldc java/lang/String
iconst_0
anewarray java/lang/Class
invokevirtual de/greenrobot/event/EventBus/register(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V
return
.limit locals 2
.limit stack 4
.end method

.method public exchange(II)V
aload 0
iload 2
putfield com/nd/android/u/cloud/ui/adapter/AppAdapter/holdPosition I
iload 1
istore 4
iload 2
istore 3
iload 1
iload 2
if_icmple L0
iload 1
istore 3
iload 2
istore 4
L0:
aload 0
iload 3
invokevirtual com/nd/android/u/cloud/ui/adapter/AppAdapter/getItem(I)Ljava/lang/Object;
astore 5
aload 0
iload 4
invokevirtual com/nd/android/u/cloud/ui/adapter/AppAdapter/getItem(I)Ljava/lang/Object;
astore 6
aload 0
getfield com/nd/android/u/cloud/ui/adapter/AppAdapter/mAppList Ljava/util/List;
iload 4
aload 5
checkcast com/product/android/commonInterface/contact/OapApp
invokeinterface java/util/List/set(ILjava/lang/Object;)Ljava/lang/Object; 2
pop
aload 0
getfield com/nd/android/u/cloud/ui/adapter/AppAdapter/mAppList Ljava/util/List;
iload 3
aload 6
checkcast com/product/android/commonInterface/contact/OapApp
invokeinterface java/util/List/set(ILjava/lang/Object;)Ljava/lang/Object; 2
pop
aload 0
invokevirtual com/nd/android/u/cloud/ui/adapter/AppAdapter/notifyDataSetChanged()V
return
.limit locals 7
.limit stack 3
.end method

.method public getAppList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/product/android/commonInterface/contact/OapApp;>;"
aload 0
getfield com/nd/android/u/cloud/ui/adapter/AppAdapter/mAppList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/cloud/ui/adapter/AppAdapter/mAppList Ljava/util/List;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/cloud/ui/adapter/AppAdapter/mAppList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/cloud/ui/adapter/AppAdapter/mbHRRecognizeEntrance Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/ui/adapter/AppAdapter/mAppList Ljava/util/List;
ifnull L1
aload 0
getfield com/nd/android/u/cloud/ui/adapter/AppAdapter/mAppList Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifeq L2
L1:
aconst_null
areturn
L2:
aload 0
getfield com/nd/android/u/cloud/ui/adapter/AppAdapter/mAppList Ljava/util/List;
iload 1
iconst_1
isub
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
areturn
L0:
aload 0
getfield com/nd/android/u/cloud/ui/adapter/AppAdapter/mAppList Ljava/util/List;
ifnull L1
aload 0
getfield com/nd/android/u/cloud/ui/adapter/AppAdapter/mAppList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public getItemId(I)J
iload 1
i2l
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
astore 3
aload 2
ifnonnull L0
new com/nd/android/u/cloud/ui/adapter/AppAdapter$Holder
dup
aload 0
invokespecial com/nd/android/u/cloud/ui/adapter/AppAdapter$Holder/<init>(Lcom/nd/android/u/cloud/ui/adapter/AppAdapter;)V
astore 2
aload 0
getfield com/nd/android/u/cloud/ui/adapter/AppAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
ldc_w 2130903159
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 3
aload 2
aload 3
ldc_w 2131624569
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/cloud/ui/adapter/AppAdapter$Holder/mLayoutFace Landroid/widget/RelativeLayout;
aload 2
aload 3
ldc_w 2131624560
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/ui/adapter/AppAdapter$Holder/image Landroid/widget/ImageView;
aload 2
aload 3
ldc_w 2131624563
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/ui/adapter/AppAdapter$Holder/name Landroid/widget/TextView;
aload 2
aload 3
ldc_w 2131624561
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/ui/adapter/AppAdapter$Holder/countText Landroid/widget/TextView;
aload 2
aload 3
ldc_w 2131624570
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/cloud/ui/adapter/AppAdapter$Holder/mlayoutEntrance Landroid/widget/RelativeLayout;
aload 2
aload 3
ldc_w 2131624571
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/GridView
putfield com/nd/android/u/cloud/ui/adapter/AppAdapter$Holder/mGridViewEntrance Landroid/widget/GridView;
aload 2
aload 3
ldc_w 2131624572
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/ui/adapter/AppAdapter$Holder/mivEntrance Landroid/widget/ImageView;
aload 3
aload 2
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L0:
aload 3
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/cloud/ui/adapter/AppAdapter$Holder
astore 2
aload 2
getfield com/nd/android/u/cloud/ui/adapter/AppAdapter$Holder/mlayoutEntrance Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 2
getfield com/nd/android/u/cloud/ui/adapter/AppAdapter$Holder/mLayoutFace Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/ui/adapter/AppAdapter/mAppList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapApp
astore 5
aload 5
getfield com/product/android/commonInterface/contact/OapApp/displayType Z
ifeq L1
aload 2
getfield com/nd/android/u/cloud/ui/adapter/AppAdapter$Holder/image Landroid/widget/ImageView;
aload 5
invokevirtual com/product/android/commonInterface/contact/OapApp/getUid()J
aload 5
invokevirtual com/product/android/commonInterface/contact/OapApp/getAppid()I
aload 5
invokevirtual com/product/android/commonInterface/contact/OapApp/getCode()Ljava/lang/String;
aload 5
invokevirtual com/product/android/commonInterface/contact/OapApp/getAppid()I
aload 5
invokevirtual com/product/android/commonInterface/contact/OapApp/getCode()Ljava/lang/String;
ldc "f64"
invokestatic com/nd/android/u/contact/business/SynOapApp/getMenuIconUrl(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokestatic com/nd/android/u/image/SimpleHeadImageLoader/display(Landroid/widget/ImageView;JILjava/lang/String;Ljava/lang/String;)V
aload 2
getfield com/nd/android/u/cloud/ui/adapter/AppAdapter$Holder/name Landroid/widget/TextView;
aload 5
invokevirtual com/product/android/commonInterface/contact/OapApp/getName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
invokestatic com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/getInstance()Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager;
aload 5
getfield com/product/android/commonInterface/contact/OapApp/menutype Ljava/lang/String;
aload 0
invokevirtual com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/getAppTypeCornerMarkByService(Ljava/lang/String;Lcom/nd/android/u/cloud/cache/ProfileAppMenuCacheCallback;)I
istore 4
L2:
iload 4
ifne L3
aload 2
getfield com/nd/android/u/cloud/ui/adapter/AppAdapter$Holder/countText Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 2
getfield com/nd/android/u/cloud/ui/adapter/AppAdapter$Holder/countText Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L4:
iload 1
aload 0
getfield com/nd/android/u/cloud/ui/adapter/AppAdapter/holdPosition I
if_icmpne L5
aload 0
getfield com/nd/android/u/cloud/ui/adapter/AppAdapter/showItem Z
ifne L5
aload 3
iconst_4
invokevirtual android/view/View/setVisibility(I)V
aload 3
areturn
L1:
aload 2
getfield com/nd/android/u/cloud/ui/adapter/AppAdapter$Holder/image Landroid/widget/ImageView;
aload 5
invokevirtual com/product/android/commonInterface/contact/OapApp/getUid()J
aload 5
invokevirtual com/product/android/commonInterface/contact/OapApp/getAppid()I
aload 5
invokevirtual com/product/android/commonInterface/contact/OapApp/getCode()Ljava/lang/String;
aload 5
invokevirtual com/product/android/commonInterface/contact/OapApp/getAppid()I
aload 5
invokevirtual com/product/android/commonInterface/contact/OapApp/getCode()Ljava/lang/String;
ldc "f64"
invokestatic com/nd/android/u/contact/business/SynOapApp/getMenuIconUrl(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokestatic com/nd/android/u/image/SimpleHeadImageLoader/display(Landroid/widget/ImageView;JILjava/lang/String;Ljava/lang/String;)V
aload 2
getfield com/nd/android/u/cloud/ui/adapter/AppAdapter$Holder/name Landroid/widget/TextView;
aload 5
invokevirtual com/product/android/commonInterface/contact/OapApp/getName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
invokestatic com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/getInstance()Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager;
iconst_1
invokevirtual com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/setRefresh(Z)V
invokestatic com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/getInstance()Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager;
aload 5
invokevirtual com/product/android/commonInterface/contact/OapApp/getAppid()I
aload 5
invokevirtual com/product/android/commonInterface/contact/OapApp/getCode()Ljava/lang/String;
aload 0
invokevirtual com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/getCornerMarkByService(ILjava/lang/String;Lcom/nd/android/u/cloud/cache/ProfileAppMenuCacheCallback;)I
istore 4
goto L2
L3:
aload 2
getfield com/nd/android/u/cloud/ui/adapter/AppAdapter$Holder/countText Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 2
getfield com/nd/android/u/cloud/ui/adapter/AppAdapter$Holder/countText Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L4
L5:
aload 3
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 3
areturn
.limit locals 6
.limit stack 8
.end method

.method public onEventMainThread(Ljava/lang/String;)V
ldc "FRESH_APP_LIST"
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
aload 0
invokevirtual com/nd/android/u/cloud/ui/adapter/AppAdapter/notifyDataSetChanged()V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public refresh()V
aload 0
invokevirtual com/nd/android/u/cloud/ui/adapter/AppAdapter/notifyDataSetChanged()V
return
.limit locals 1
.limit stack 1
.end method

.method public setAppList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapApp;>;)V"
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/adapter/AppAdapter/mAppList Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method

.method public setIsEntrance(Z)V
aload 0
iload 1
putfield com/nd/android/u/cloud/ui/adapter/AppAdapter/mbHRRecognizeEntrance Z
return
.limit locals 2
.limit stack 2
.end method

.method public showDropItem(Z)V
aload 0
iload 1
putfield com/nd/android/u/cloud/ui/adapter/AppAdapter/showItem Z
return
.limit locals 2
.limit stack 2
.end method
