.bytecode 50.0
.class public synchronized com/nd/android/u/news/ui/adapter/NewsViewPagerAdapter
.super android/support/v4/view/PagerAdapter

.field private 'mActivityType' Ljava/lang/String;

.field private 'mContext' Landroid/content/Context;

.field private 'mCreater' Lcom/nd/android/u/news/ui/view/ViewCreater;

.field private 'mUrlList' Ljava/util/List; signature "Ljava/util/List<Ljava/lang/String;>;"

.method public <init>(Ljava/lang/String;Landroid/content/Context;)V
aload 0
invokespecial android/support/v4/view/PagerAdapter/<init>()V
aload 0
new com/nd/android/u/news/ui/view/ViewCreater
dup
invokespecial com/nd/android/u/news/ui/view/ViewCreater/<init>()V
putfield com/nd/android/u/news/ui/adapter/NewsViewPagerAdapter/mCreater Lcom/nd/android/u/news/ui/view/ViewCreater;
aload 0
aload 2
putfield com/nd/android/u/news/ui/adapter/NewsViewPagerAdapter/mContext Landroid/content/Context;
aload 0
aload 1
putfield com/nd/android/u/news/ui/adapter/NewsViewPagerAdapter/mActivityType Ljava/lang/String;
return
.limit locals 3
.limit stack 3
.end method

.method public addUrlList(Ljava/util/List;)V
.signature "(Ljava/util/List<Ljava/lang/String;>;)V"
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsViewPagerAdapter/mUrlList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsViewPagerAdapter/mUrlList Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 0
invokevirtual com/nd/android/u/news/ui/adapter/NewsViewPagerAdapter/notifyDataSetChanged()V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
aload 3
instanceof android/view/View
ifeq L0
aload 1
aload 3
checkcast android/view/View
invokevirtual android/view/ViewGroup/removeView(Landroid/view/View;)V
L0:
return
.limit locals 4
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsViewPagerAdapter/mUrlList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsViewPagerAdapter/mUrlList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getUrlList()Ljava/util/List;
.signature "()Ljava/util/List<Ljava/lang/String;>;"
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsViewPagerAdapter/mUrlList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsViewPagerAdapter/mCreater Lcom/nd/android/u/news/ui/view/ViewCreater;
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsViewPagerAdapter/mActivityType Ljava/lang/String;
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsViewPagerAdapter/mContext Landroid/content/Context;
invokevirtual com/nd/android/u/news/ui/view/ViewCreater/createNewsView(Ljava/lang/String;Landroid/content/Context;)Lcom/nd/android/u/news/ui/view/AbstractNewsView;
astore 3
aload 3
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsViewPagerAdapter/mUrlList Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast java/lang/String
invokevirtual com/nd/android/u/news/ui/view/AbstractNewsView/setNewsPic(Ljava/lang/String;)V
aload 1
aload 3
invokevirtual android/view/ViewGroup/addView(Landroid/view/View;)V
aload 3
areturn
.limit locals 4
.limit stack 3
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

.method public setUrlList(Ljava/util/List;)V
.signature "(Ljava/util/List<Ljava/lang/String;>;)V"
aload 0
aload 1
putfield com/nd/android/u/news/ui/adapter/NewsViewPagerAdapter/mUrlList Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method
