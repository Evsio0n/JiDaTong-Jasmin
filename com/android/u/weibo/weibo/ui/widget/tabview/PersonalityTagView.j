.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/widget/tabview/PersonalityTagView
.super com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase

.field private static final 'COLOR_TYPE' I = 3


.field private static final 'COLUMN_TAG' I = 2


.field private static final 'MAX_TAG' I = 4


.field private static final 'ROW_TAG' I = 2


.field private 'mContext' Landroid/content/Context;

.field private 'mFragment' Landroid/support/v4/app/Fragment;

.field private 'mTags' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/String;>;"

.field private 'mUid' J

.method public <init>(Landroid/content/Context;Landroid/support/v4/app/Fragment;J)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/<init>(Landroid/content/Context;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/widget/tabview/PersonalityTagView/mContext Landroid/content/Context;
aload 0
aload 2
putfield com/android/u/weibo/weibo/ui/widget/tabview/PersonalityTagView/mFragment Landroid/support/v4/app/Fragment;
aload 0
lload 3
putfield com/android/u/weibo/weibo/ui/widget/tabview/PersonalityTagView/mUid J
return
.limit locals 5
.limit stack 3
.end method

.method public clearData()V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/PersonalityTagView/mTags Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/PersonalityTagView/mTags Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public doClick()V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/PersonalityTagView/mFragment Landroid/support/v4/app/Fragment;
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/PersonalityTagView/mUid J
sipush 1008
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/doPersonalityTag(Landroid/support/v4/app/Fragment;JI)V
return
.limit locals 1
.limit stack 4
.end method

.method public getDataAndProcessBitmap()V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/PersonalityTagView/mUid J
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/getTagInfo(J)Ljava/util/List;
astore 1
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/size()I 0
ifeq L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/android/u/weibo/weibo/ui/widget/tabview/PersonalityTagView/mTags Ljava/util/ArrayList;
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/TagInfo
astore 2
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/PersonalityTagView/mTags Ljava/util/ArrayList;
aload 2
invokevirtual com/product/android/commonInterface/contact/TagInfo/getTagname()Ljava/lang/String;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L1
L0:
return
.limit locals 3
.limit stack 3
.end method

.method protected getDefaultBitmap()I
getstatic com/android/u/weibo/R$drawable/no_tag I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getTitle()Ljava/lang/String;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/PersonalityTagView/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/personality_tag I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method protected isNeedTask()Z
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected setGridViewData(ILandroid/view/View;Landroid/widget/AbsListView$LayoutParams;)Landroid/view/View;
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "InflateParams" 
.end annotation
aload 2
ifnonnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/PersonalityTagView/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/android/u/weibo/R$layout/textview_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 2
getstatic com/android/u/weibo/R$id/tvItem I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 4
aload 4
ifnonnull L1
ldc "PERSONALITYTAG"
ldc "textView == null"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L1:
aload 2
aload 3
invokevirtual android/view/View/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 2
aload 4
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
aload 4
astore 3
L2:
iload 1
iconst_3
irem
tableswitch 0
L3
L4
L5
default : L6
L6:
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/PersonalityTagView/mTags Ljava/util/ArrayList;
ifnull L7
aload 3
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/PersonalityTagView/mTags Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/CharSequence
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L7:
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast android/widget/TextView
astore 3
goto L2
L3:
aload 3
getstatic com/android/u/weibo/R$drawable/tag_item1_bg_selector I
invokevirtual android/widget/TextView/setBackgroundResource(I)V
goto L6
L4:
aload 3
getstatic com/android/u/weibo/R$drawable/tag_item2_bg_selector I
invokevirtual android/widget/TextView/setBackgroundResource(I)V
goto L6
L5:
aload 3
getstatic com/android/u/weibo/R$drawable/tag_item3_bg_selector I
invokevirtual android/widget/TextView/setBackgroundResource(I)V
goto L6
.limit locals 5
.limit stack 3
.end method

.method public updateData(Ljava/lang/Object;)V
aconst_null
astore 2
aload 1
checkcast java/util/ArrayList
astore 3
aload 2
astore 1
aload 3
ifnull L0
aload 2
astore 1
aload 3
invokevirtual java/util/ArrayList/size()I
ifeq L0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
aload 3
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 3
L1:
aload 2
astore 1
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 2
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/TagInfo
invokevirtual com/product/android/commonInterface/contact/TagInfo/getTagname()Ljava/lang/String;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L1
L0:
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/widget/tabview/PersonalityTagView/mTags Ljava/util/ArrayList;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/PersonalityTagView/updateView()V
return
.limit locals 4
.limit stack 2
.end method

.method public updateView()V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/PersonalityTagView/mTags Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/PersonalityTagView/mTags Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifne L1
L0:
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/PersonalityTagView/initBlankImage()V
return
L1:
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/PersonalityTagView/toShowValueView()V
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/PersonalityTagView/mTags Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_4
iconst_2
iconst_2
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/PersonalityTagView/setMultiGrid(IIII)V
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/PersonalityTagView/notifyDataSetChanged()V
return
.limit locals 1
.limit stack 5
.end method
