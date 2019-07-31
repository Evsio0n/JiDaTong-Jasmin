.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/ui/widget/PspMenuView
.super com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow
.inner class inner com/nd/android/u/publicNumber/ui/widget/PspMenuView$1
.inner class inner com/nd/android/u/publicNumber/ui/widget/PspMenuView$2
.inner class DropUpAdapter inner com/nd/android/u/publicNumber/ui/widget/PspMenuView$DropUpAdapter outer com/nd/android/u/publicNumber/ui/widget/PspMenuView
.inner class Holder inner com/nd/android/u/publicNumber/ui/widget/PspMenuView$DropUpAdapter$Holder outer com/nd/android/u/publicNumber/ui/widget/PspMenuView
.inner class public static abstract interface OnItemClickCallBack inner com/nd/android/u/publicNumber/ui/widget/PspMenuView$OnItemClickCallBack outer com/nd/android/u/publicNumber/ui/widget/PspMenuView

.field private 'mAdapter' Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView$DropUpAdapter;

.field private 'mMenubtnlist' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton;>;"

.field private 'mcallback' Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView$OnItemClickCallBack;

.field private 'mlvList' Landroid/widget/ListView;

.field private 'mpositon' I

.field private 'onClick' Landroid/view/View$OnClickListener;

.method public <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView$OnItemClickCallBack;)V
.signature "(Landroid/content/Context;Ljava/util/ArrayList<Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton;>;Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView$OnItemClickCallBack;)V"
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow/<init>(Landroid/content/Context;)V
aload 0
new com/nd/android/u/publicNumber/ui/widget/PspMenuView$2
dup
aload 0
invokespecial com/nd/android/u/publicNumber/ui/widget/PspMenuView$2/<init>(Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView;)V
putfield com/nd/android/u/publicNumber/ui/widget/PspMenuView/onClick Landroid/view/View$OnClickListener;
aload 0
aload 3
putfield com/nd/android/u/publicNumber/ui/widget/PspMenuView/mcallback Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView$OnItemClickCallBack;
aload 0
aload 2
putfield com/nd/android/u/publicNumber/ui/widget/PspMenuView/mMenubtnlist Ljava/util/ArrayList;
return
.limit locals 4
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView;)Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView$OnItemClickCallBack;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspMenuView/mcallback Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView$OnItemClickCallBack;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView;)Landroid/view/View;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspMenuView/anchor Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView;)Landroid/view/View$OnClickListener;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspMenuView/onClick Landroid/view/View$OnClickListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView;)Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView$DropUpAdapter;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspMenuView/mAdapter Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView$DropUpAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method private initData()Z
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspMenuView/mMenubtnlist Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspMenuView/mMenubtnlist Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspMenuView/mpositon I
if_icmpgt L1
L0:
iconst_0
ireturn
L1:
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspMenuView/mMenubtnlist Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspMenuView/mpositon I
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton/subButtons Ljava/util/ArrayList;
astore 1
aload 1
ifnull L2
aload 1
invokevirtual java/util/ArrayList/isEmpty()Z
ifeq L3
L2:
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspMenuView/mcallback Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView$OnItemClickCallBack;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspMenuView/mMenubtnlist Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspMenuView/mpositon I
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton
invokeinterface com/nd/android/u/publicNumber/ui/widget/PspMenuView$OnItemClickCallBack/onItemClick(Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton;)V 1
iconst_0
ireturn
L3:
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspMenuView/mAdapter Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView$DropUpAdapter;
ifnonnull L4
aload 0
new com/nd/android/u/publicNumber/ui/widget/PspMenuView$DropUpAdapter
dup
aload 0
invokespecial com/nd/android/u/publicNumber/ui/widget/PspMenuView$DropUpAdapter/<init>(Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView;)V
putfield com/nd/android/u/publicNumber/ui/widget/PspMenuView/mAdapter Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView$DropUpAdapter;
L4:
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspMenuView/mAdapter Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView$DropUpAdapter;
aload 1
invokevirtual com/nd/android/u/publicNumber/ui/widget/PspMenuView$DropUpAdapter/setSubButtonsList(Ljava/util/ArrayList;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspMenuView/mlvList Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspMenuView/mAdapter Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView$DropUpAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspMenuView/mcallback Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView$OnItemClickCallBack;
ifnull L5
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspMenuView/mcallback Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView$OnItemClickCallBack;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspMenuView/mpositon I
invokeinterface com/nd/android/u/publicNumber/ui/widget/PspMenuView$OnItemClickCallBack/showOption(I)V 1
L5:
iconst_1
ireturn
.limit locals 2
.limit stack 4
.end method

.method protected dismissOption()V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspMenuView/mcallback Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView$OnItemClickCallBack;
ifnull L0
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspMenuView/mcallback Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView$OnItemClickCallBack;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspMenuView/mpositon I
invokeinterface com/nd/android/u/publicNumber/ui/widget/PspMenuView$OnItemClickCallBack/dismissOption(I)V 1
L0:
return
.limit locals 1
.limit stack 2
.end method

.method protected onCreate()V
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow/onCreate()V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspMenuView/mctx Landroid/content/Context;
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
getstatic com/nd/android/u/chat/R$layout/chat_pub_num_popup I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 1
aload 0
aload 1
getstatic com/nd/android/u/chat/R$id/chatPubNumPopList I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/publicNumber/ui/widget/PspMenuView/mlvList Landroid/widget/ListView;
aload 0
aload 1
invokevirtual com/nd/android/u/publicNumber/ui/widget/PspMenuView/setContentView(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspMenuView/mlvList Landroid/widget/ListView;
new com/nd/android/u/publicNumber/ui/widget/PspMenuView$1
dup
aload 0
invokespecial com/nd/android/u/publicNumber/ui/widget/PspMenuView$1/<init>(Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView;)V
invokevirtual android/widget/ListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
return
.limit locals 2
.limit stack 4
.end method

.method protected onShow()Z
aload 0
invokespecial com/nd/android/u/publicNumber/ui/widget/PspMenuView/initData()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setAnchor(Landroid/view/View;I)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/widget/PspMenuView/anchor Landroid/view/View;
aload 0
iload 2
putfield com/nd/android/u/publicNumber/ui/widget/PspMenuView/mpositon I
return
.limit locals 3
.limit stack 2
.end method
