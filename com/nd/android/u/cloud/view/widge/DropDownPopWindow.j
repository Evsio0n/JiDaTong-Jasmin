.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/view/widge/DropDownPopWindow
.super java/lang/Object
.inner class inner com/nd/android/u/cloud/view/widge/DropDownPopWindow$1
.inner class DropDownAdapter inner com/nd/android/u/cloud/view/widge/DropDownPopWindow$DropDownAdapter outer com/nd/android/u/cloud/view/widge/DropDownPopWindow
.inner class Holder inner com/nd/android/u/cloud/view/widge/DropDownPopWindow$DropDownAdapter$Holder outer com/nd/android/u/cloud/view/widge/DropDownPopWindow

.field private 'imagResIdList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/Integer;>;"

.field private 'listView' Landroid/widget/ListView;

.field private 'mAdapter' Lcom/nd/android/u/cloud/view/widge/DropDownPopWindow$DropDownAdapter;

.field private 'mContext' Landroid/content/Context;

.field private 'mListView' Landroid/view/View;

.field private 'mParentView' Landroid/view/View;

.field private 'mPopupWindow' Landroid/widget/PopupWindow;

.field private 'titleList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/String;>;"

.method public <init>(Landroid/content/Context;Landroid/view/View;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nd/android/u/cloud/view/widge/DropDownPopWindow/mContext Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/cloud/view/widge/DropDownPopWindow/mParentView Landroid/view/View;
aload 0
invokespecial com/nd/android/u/cloud/view/widge/DropDownPopWindow/initData()V
aload 0
invokevirtual com/nd/android/u/cloud/view/widge/DropDownPopWindow/initView()V
return
.limit locals 3
.limit stack 2
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/view/widge/DropDownPopWindow;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/cloud/view/widge/DropDownPopWindow/titleList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/view/widge/DropDownPopWindow;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/cloud/view/widge/DropDownPopWindow/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/cloud/view/widge/DropDownPopWindow;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/cloud/view/widge/DropDownPopWindow/imagResIdList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method private initData()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/cloud/view/widge/DropDownPopWindow/titleList Ljava/util/ArrayList;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/cloud/view/widge/DropDownPopWindow/imagResIdList Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/cloud/view/widge/DropDownPopWindow/titleList Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/cloud/view/widge/DropDownPopWindow/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
ldc_w 2131494836
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/nd/android/u/cloud/view/widge/DropDownPopWindow/titleList Ljava/util/ArrayList;
ldc ""
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
return
.limit locals 1
.limit stack 3
.end method

.method private registerOnKeyListener()V
aload 0
getfield com/nd/android/u/cloud/view/widge/DropDownPopWindow/mListView Landroid/view/View;
new com/nd/android/u/cloud/view/widge/DropDownPopWindow$1
dup
aload 0
invokespecial com/nd/android/u/cloud/view/widge/DropDownPopWindow$1/<init>(Lcom/nd/android/u/cloud/view/widge/DropDownPopWindow;)V
invokevirtual android/view/View/setOnKeyListener(Landroid/view/View$OnKeyListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method public hideMenu()Z
iconst_0
istore 1
aload 0
getfield com/nd/android/u/cloud/view/widge/DropDownPopWindow/mPopupWindow Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/isShowing()Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/view/widge/DropDownPopWindow/mPopupWindow Landroid/widget/PopupWindow;
iconst_0
invokevirtual android/widget/PopupWindow/setFocusable(Z)V
aload 0
getfield com/nd/android/u/cloud/view/widge/DropDownPopWindow/mPopupWindow Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/dismiss()V
iconst_1
istore 1
L0:
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public initView()V
aload 0
aload 0
getfield com/nd/android/u/cloud/view/widge/DropDownPopWindow/mContext Landroid/content/Context;
checkcast android/app/Activity
invokevirtual android/app/Activity/getLayoutInflater()Landroid/view/LayoutInflater;
ldc_w 2130903305
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
putfield com/nd/android/u/cloud/view/widge/DropDownPopWindow/mListView Landroid/view/View;
aload 0
new android/widget/PopupWindow
dup
aload 0
getfield com/nd/android/u/cloud/view/widge/DropDownPopWindow/mListView Landroid/view/View;
sipush 200
bipush -2
iconst_1
invokespecial android/widget/PopupWindow/<init>(Landroid/view/View;IIZ)V
putfield com/nd/android/u/cloud/view/widge/DropDownPopWindow/mPopupWindow Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/cloud/view/widge/DropDownPopWindow/mPopupWindow Landroid/widget/PopupWindow;
iconst_1
invokevirtual android/widget/PopupWindow/setFocusable(Z)V
new android/graphics/drawable/ColorDrawable
dup
iconst_0
invokespecial android/graphics/drawable/ColorDrawable/<init>(I)V
astore 1
aload 0
getfield com/nd/android/u/cloud/view/widge/DropDownPopWindow/mPopupWindow Landroid/widget/PopupWindow;
aload 1
invokevirtual android/widget/PopupWindow/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/android/u/cloud/view/widge/DropDownPopWindow/mPopupWindow Landroid/widget/PopupWindow;
ldc_w 2131230971
invokevirtual android/widget/PopupWindow/setAnimationStyle(I)V
aload 0
aload 0
getfield com/nd/android/u/cloud/view/widge/DropDownPopWindow/mListView Landroid/view/View;
ldc_w 2131625246
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/cloud/view/widge/DropDownPopWindow/listView Landroid/widget/ListView;
aload 0
new com/nd/android/u/cloud/view/widge/DropDownPopWindow$DropDownAdapter
dup
aload 0
invokespecial com/nd/android/u/cloud/view/widge/DropDownPopWindow$DropDownAdapter/<init>(Lcom/nd/android/u/cloud/view/widge/DropDownPopWindow;)V
putfield com/nd/android/u/cloud/view/widge/DropDownPopWindow/mAdapter Lcom/nd/android/u/cloud/view/widge/DropDownPopWindow$DropDownAdapter;
aload 0
getfield com/nd/android/u/cloud/view/widge/DropDownPopWindow/listView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/cloud/view/widge/DropDownPopWindow/mAdapter Lcom/nd/android/u/cloud/view/widge/DropDownPopWindow$DropDownAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/nd/android/u/cloud/view/widge/DropDownPopWindow/mAdapter Lcom/nd/android/u/cloud/view/widge/DropDownPopWindow$DropDownAdapter;
invokevirtual com/nd/android/u/cloud/view/widge/DropDownPopWindow$DropDownAdapter/notifyDataSetChanged()V
return
.limit locals 2
.limit stack 7
.end method

.method public showPopWindow()V
aload 0
getfield com/nd/android/u/cloud/view/widge/DropDownPopWindow/mPopupWindow Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/isShowing()Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/view/widge/DropDownPopWindow/mPopupWindow Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/dismiss()V
return
L0:
aload 0
getfield com/nd/android/u/cloud/view/widge/DropDownPopWindow/mPopupWindow Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/cloud/view/widge/DropDownPopWindow/mParentView Landroid/view/View;
iconst_0
bipush 30
invokevirtual android/widget/PopupWindow/showAsDropDown(Landroid/view/View;II)V
return
.limit locals 1
.limit stack 4
.end method
