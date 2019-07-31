.bytecode 50.0
.class public synchronized abstract android/support/v4/view/PagerAdapter
.super java/lang/Object

.field public static final 'POSITION_NONE' I = -2


.field public static final 'POSITION_UNCHANGED' I = -1


.field private 'mObservable' Landroid/database/DataSetObservable;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new android/database/DataSetObservable
dup
invokespecial android/database/DataSetObservable/<init>()V
putfield android/support/v4/view/PagerAdapter/mObservable Landroid/database/DataSetObservable;
return
.limit locals 1
.limit stack 3
.end method

.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
new java/lang/UnsupportedOperationException
dup
ldc "Required method destroyItem was not overridden"
invokespecial java/lang/UnsupportedOperationException/<init>(Ljava/lang/String;)V
athrow
.limit locals 4
.limit stack 3
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
aload 0
aload 1
iload 2
aload 3
invokevirtual android/support/v4/view/PagerAdapter/destroyItem(Landroid/view/View;ILjava/lang/Object;)V
return
.limit locals 4
.limit stack 4
.end method

.method public finishUpdate(Landroid/view/View;)V
return
.limit locals 2
.limit stack 0
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
aload 0
aload 1
invokevirtual android/support/v4/view/PagerAdapter/finishUpdate(Landroid/view/View;)V
return
.limit locals 2
.limit stack 2
.end method

.method public abstract getCount()I
.end method

.method public getItemPosition(Ljava/lang/Object;)I
iconst_m1
ireturn
.limit locals 2
.limit stack 1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method

.method public getPageWidth(I)F
fconst_1
freturn
.limit locals 2
.limit stack 1
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
new java/lang/UnsupportedOperationException
dup
ldc "Required method instantiateItem was not overridden"
invokespecial java/lang/UnsupportedOperationException/<init>(Ljava/lang/String;)V
athrow
.limit locals 3
.limit stack 3
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
aload 0
aload 1
iload 2
invokevirtual android/support/v4/view/PagerAdapter/instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
areturn
.limit locals 3
.limit stack 3
.end method

.method public abstract isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
.end method

.method public notifyDataSetChanged()V
aload 0
getfield android/support/v4/view/PagerAdapter/mObservable Landroid/database/DataSetObservable;
invokevirtual android/database/DataSetObservable/notifyChanged()V
return
.limit locals 1
.limit stack 1
.end method

.method registerDataSetObserver(Landroid/database/DataSetObserver;)V
aload 0
getfield android/support/v4/view/PagerAdapter/mObservable Landroid/database/DataSetObservable;
aload 1
invokevirtual android/database/DataSetObservable/registerObserver(Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 2
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
return
.limit locals 3
.limit stack 0
.end method

.method public saveState()Landroid/os/Parcelable;
aconst_null
areturn
.limit locals 1
.limit stack 1
.end method

.method public setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V
return
.limit locals 4
.limit stack 0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
aload 0
aload 1
iload 2
aload 3
invokevirtual android/support/v4/view/PagerAdapter/setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V
return
.limit locals 4
.limit stack 4
.end method

.method public startUpdate(Landroid/view/View;)V
return
.limit locals 2
.limit stack 0
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
aload 0
aload 1
invokevirtual android/support/v4/view/PagerAdapter/startUpdate(Landroid/view/View;)V
return
.limit locals 2
.limit stack 2
.end method

.method unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
aload 0
getfield android/support/v4/view/PagerAdapter/mObservable Landroid/database/DataSetObservable;
aload 1
invokevirtual android/database/DataSetObservable/unregisterObserver(Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 2
.end method
