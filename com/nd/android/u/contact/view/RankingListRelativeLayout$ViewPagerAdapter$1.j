.bytecode 50.0
.class synchronized com/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter/instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.inner class private ViewPagerAdapter inner com/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter outer com/nd/android/u/contact/view/RankingListRelativeLayout
.inner class inner com/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter$1

.field final synthetic 'this$1' Lcom/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter;

.field final synthetic 'val$pos' I

.method <init>(Lcom/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter;I)V
aload 0
aload 1
putfield com/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter$1/this$1 Lcom/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter;
aload 0
iload 2
putfield com/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter$1/val$pos I
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter$1/this$1 Lcom/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter;
invokestatic com/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter/access$700(Lcom/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter;)Landroid/content/Context;
ldc com/nd/android/u/contact/activity/XYTopRankActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
L1:
invokestatic com/nd/android/u/contact/view/RankingListRelativeLayout/access$800()[Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter$1/val$pos I
aaload
ldc "\u6700\u53d7\u6b22\u8fce\u7f8e\u5973\u6392\u884c"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
aload 1
ldc "topType"
iconst_0
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 1
ldc "gender"
iconst_2
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
L3:
aload 0
getfield com/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter$1/this$1 Lcom/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter;
invokestatic com/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter/access$700(Lcom/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter;)Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
L0:
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter$1/this$1 Lcom/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter;
invokestatic com/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter/access$700(Lcom/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter;)Landroid/content/Context;
ldc com/nd/android/u/contact/activity/TopRankActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
goto L1
L2:
invokestatic com/nd/android/u/contact/view/RankingListRelativeLayout/access$800()[Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter$1/val$pos I
aaload
ldc "\u6700\u53d7\u6b22\u8fce\u5e05\u54e5\u6392\u884c"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L4
aload 1
ldc "topType"
iconst_0
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 1
ldc "gender"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
goto L3
L4:
invokestatic com/nd/android/u/contact/view/RankingListRelativeLayout/access$800()[Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter$1/val$pos I
aaload
ldc "\u88ab\u6697\u604b\u6392\u884c"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
aload 1
ldc "topType"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
goto L3
.limit locals 2
.limit stack 4
.end method
