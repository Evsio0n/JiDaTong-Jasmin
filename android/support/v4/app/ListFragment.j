.bytecode 50.0
.class public synchronized android/support/v4/app/ListFragment
.super android/support/v4/app/Fragment
.inner class inner android/support/v4/app/ListFragment$1
.inner class inner android/support/v4/app/ListFragment$2

.field static final 'INTERNAL_EMPTY_ID' I = 16711681


.field static final 'INTERNAL_LIST_CONTAINER_ID' I = 16711683


.field static final 'INTERNAL_PROGRESS_CONTAINER_ID' I = 16711682


.field 'mAdapter' Landroid/widget/ListAdapter;

.field 'mEmptyText' Ljava/lang/CharSequence;

.field 'mEmptyView' Landroid/view/View;

.field private final 'mHandler' Landroid/os/Handler;

.field 'mList' Landroid/widget/ListView;

.field 'mListContainer' Landroid/view/View;

.field 'mListShown' Z

.field private final 'mOnClickListener' Landroid/widget/AdapterView$OnItemClickListener;

.field 'mProgressContainer' Landroid/view/View;

.field private final 'mRequestFocus' Ljava/lang/Runnable;

.field 'mStandardEmptyView' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial android/support/v4/app/Fragment/<init>()V
aload 0
new android/os/Handler
dup
invokespecial android/os/Handler/<init>()V
putfield android/support/v4/app/ListFragment/mHandler Landroid/os/Handler;
aload 0
new android/support/v4/app/ListFragment$1
dup
aload 0
invokespecial android/support/v4/app/ListFragment$1/<init>(Landroid/support/v4/app/ListFragment;)V
putfield android/support/v4/app/ListFragment/mRequestFocus Ljava/lang/Runnable;
aload 0
new android/support/v4/app/ListFragment$2
dup
aload 0
invokespecial android/support/v4/app/ListFragment$2/<init>(Landroid/support/v4/app/ListFragment;)V
putfield android/support/v4/app/ListFragment/mOnClickListener Landroid/widget/AdapterView$OnItemClickListener;
return
.limit locals 1
.limit stack 4
.end method

.method private ensureList()V
aload 0
getfield android/support/v4/app/ListFragment/mList Landroid/widget/ListView;
ifnull L0
return
L0:
aload 0
invokevirtual android/support/v4/app/ListFragment/getView()Landroid/view/View;
astore 1
aload 1
ifnonnull L1
new java/lang/IllegalStateException
dup
ldc "Content view not yet created"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 1
instanceof android/widget/ListView
ifeq L2
aload 0
aload 1
checkcast android/widget/ListView
putfield android/support/v4/app/ListFragment/mList Landroid/widget/ListView;
L3:
aload 0
iconst_1
putfield android/support/v4/app/ListFragment/mListShown Z
aload 0
getfield android/support/v4/app/ListFragment/mList Landroid/widget/ListView;
aload 0
getfield android/support/v4/app/ListFragment/mOnClickListener Landroid/widget/AdapterView$OnItemClickListener;
invokevirtual android/widget/ListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getfield android/support/v4/app/ListFragment/mAdapter Landroid/widget/ListAdapter;
ifnull L4
aload 0
getfield android/support/v4/app/ListFragment/mAdapter Landroid/widget/ListAdapter;
astore 1
aload 0
aconst_null
putfield android/support/v4/app/ListFragment/mAdapter Landroid/widget/ListAdapter;
aload 0
aload 1
invokevirtual android/support/v4/app/ListFragment/setListAdapter(Landroid/widget/ListAdapter;)V
L5:
aload 0
getfield android/support/v4/app/ListFragment/mHandler Landroid/os/Handler;
aload 0
getfield android/support/v4/app/ListFragment/mRequestFocus Ljava/lang/Runnable;
invokevirtual android/os/Handler/post(Ljava/lang/Runnable;)Z
pop
return
L2:
aload 0
aload 1
ldc_w 16711681
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield android/support/v4/app/ListFragment/mStandardEmptyView Landroid/widget/TextView;
aload 0
getfield android/support/v4/app/ListFragment/mStandardEmptyView Landroid/widget/TextView;
ifnonnull L6
aload 0
aload 1
ldc_w 16908292
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
putfield android/support/v4/app/ListFragment/mEmptyView Landroid/view/View;
L7:
aload 0
aload 1
ldc_w 16711682
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
putfield android/support/v4/app/ListFragment/mProgressContainer Landroid/view/View;
aload 0
aload 1
ldc_w 16711683
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
putfield android/support/v4/app/ListFragment/mListContainer Landroid/view/View;
aload 1
ldc_w 16908298
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
astore 1
aload 1
instanceof android/widget/ListView
ifne L8
aload 1
ifnonnull L9
new java/lang/RuntimeException
dup
ldc "Your content must have a ListView whose id attribute is 'android.R.id.list'"
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;)V
athrow
L6:
aload 0
getfield android/support/v4/app/ListFragment/mStandardEmptyView Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
goto L7
L9:
new java/lang/RuntimeException
dup
ldc "Content has view with id attribute 'android.R.id.list' that is not a ListView class"
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;)V
athrow
L8:
aload 0
aload 1
checkcast android/widget/ListView
putfield android/support/v4/app/ListFragment/mList Landroid/widget/ListView;
aload 0
getfield android/support/v4/app/ListFragment/mEmptyView Landroid/view/View;
ifnull L10
aload 0
getfield android/support/v4/app/ListFragment/mList Landroid/widget/ListView;
aload 0
getfield android/support/v4/app/ListFragment/mEmptyView Landroid/view/View;
invokevirtual android/widget/ListView/setEmptyView(Landroid/view/View;)V
goto L3
L10:
aload 0
getfield android/support/v4/app/ListFragment/mEmptyText Ljava/lang/CharSequence;
ifnull L3
aload 0
getfield android/support/v4/app/ListFragment/mStandardEmptyView Landroid/widget/TextView;
aload 0
getfield android/support/v4/app/ListFragment/mEmptyText Ljava/lang/CharSequence;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield android/support/v4/app/ListFragment/mList Landroid/widget/ListView;
aload 0
getfield android/support/v4/app/ListFragment/mStandardEmptyView Landroid/widget/TextView;
invokevirtual android/widget/ListView/setEmptyView(Landroid/view/View;)V
goto L3
L4:
aload 0
getfield android/support/v4/app/ListFragment/mProgressContainer Landroid/view/View;
ifnull L5
aload 0
iconst_0
iconst_0
invokespecial android/support/v4/app/ListFragment/setListShown(ZZ)V
goto L5
.limit locals 2
.limit stack 3
.end method

.method private setListShown(ZZ)V
aload 0
invokespecial android/support/v4/app/ListFragment/ensureList()V
aload 0
getfield android/support/v4/app/ListFragment/mProgressContainer Landroid/view/View;
ifnonnull L0
new java/lang/IllegalStateException
dup
ldc "Can't be used with a custom content view"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield android/support/v4/app/ListFragment/mListShown Z
iload 1
if_icmpne L1
return
L1:
aload 0
iload 1
putfield android/support/v4/app/ListFragment/mListShown Z
iload 1
ifeq L2
iload 2
ifeq L3
aload 0
getfield android/support/v4/app/ListFragment/mProgressContainer Landroid/view/View;
aload 0
invokevirtual android/support/v4/app/ListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
ldc_w 17432577
invokestatic android/view/animation/AnimationUtils/loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
invokevirtual android/view/View/startAnimation(Landroid/view/animation/Animation;)V
aload 0
getfield android/support/v4/app/ListFragment/mListContainer Landroid/view/View;
aload 0
invokevirtual android/support/v4/app/ListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
ldc_w 17432576
invokestatic android/view/animation/AnimationUtils/loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
invokevirtual android/view/View/startAnimation(Landroid/view/animation/Animation;)V
L4:
aload 0
getfield android/support/v4/app/ListFragment/mProgressContainer Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield android/support/v4/app/ListFragment/mListContainer Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
return
L3:
aload 0
getfield android/support/v4/app/ListFragment/mProgressContainer Landroid/view/View;
invokevirtual android/view/View/clearAnimation()V
aload 0
getfield android/support/v4/app/ListFragment/mListContainer Landroid/view/View;
invokevirtual android/view/View/clearAnimation()V
goto L4
L2:
iload 2
ifeq L5
aload 0
getfield android/support/v4/app/ListFragment/mProgressContainer Landroid/view/View;
aload 0
invokevirtual android/support/v4/app/ListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
ldc_w 17432576
invokestatic android/view/animation/AnimationUtils/loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
invokevirtual android/view/View/startAnimation(Landroid/view/animation/Animation;)V
aload 0
getfield android/support/v4/app/ListFragment/mListContainer Landroid/view/View;
aload 0
invokevirtual android/support/v4/app/ListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
ldc_w 17432577
invokestatic android/view/animation/AnimationUtils/loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
invokevirtual android/view/View/startAnimation(Landroid/view/animation/Animation;)V
L6:
aload 0
getfield android/support/v4/app/ListFragment/mProgressContainer Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield android/support/v4/app/ListFragment/mListContainer Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
return
L5:
aload 0
getfield android/support/v4/app/ListFragment/mProgressContainer Landroid/view/View;
invokevirtual android/view/View/clearAnimation()V
aload 0
getfield android/support/v4/app/ListFragment/mListContainer Landroid/view/View;
invokevirtual android/view/View/clearAnimation()V
goto L6
.limit locals 3
.limit stack 3
.end method

.method public getListAdapter()Landroid/widget/ListAdapter;
aload 0
getfield android/support/v4/app/ListFragment/mAdapter Landroid/widget/ListAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getListView()Landroid/widget/ListView;
aload 0
invokespecial android/support/v4/app/ListFragment/ensureList()V
aload 0
getfield android/support/v4/app/ListFragment/mList Landroid/widget/ListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSelectedItemId()J
aload 0
invokespecial android/support/v4/app/ListFragment/ensureList()V
aload 0
getfield android/support/v4/app/ListFragment/mList Landroid/widget/ListView;
invokevirtual android/widget/ListView/getSelectedItemId()J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getSelectedItemPosition()I
aload 0
invokespecial android/support/v4/app/ListFragment/ensureList()V
aload 0
getfield android/support/v4/app/ListFragment/mList Landroid/widget/ListView;
invokevirtual android/widget/ListView/getSelectedItemPosition()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
aload 0
invokevirtual android/support/v4/app/ListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
astore 2
new android/widget/FrameLayout
dup
aload 2
invokespecial android/widget/FrameLayout/<init>(Landroid/content/Context;)V
astore 1
new android/widget/LinearLayout
dup
aload 2
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
astore 3
aload 3
ldc_w 16711682
invokevirtual android/widget/LinearLayout/setId(I)V
aload 3
iconst_1
invokevirtual android/widget/LinearLayout/setOrientation(I)V
aload 3
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 3
bipush 17
invokevirtual android/widget/LinearLayout/setGravity(I)V
aload 3
new android/widget/ProgressBar
dup
aload 2
aconst_null
ldc_w 16842874
invokespecial android/widget/ProgressBar/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
new android/widget/FrameLayout$LayoutParams
dup
bipush -2
bipush -2
invokespecial android/widget/FrameLayout$LayoutParams/<init>(II)V
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 1
aload 3
new android/widget/FrameLayout$LayoutParams
dup
iconst_m1
iconst_m1
invokespecial android/widget/FrameLayout$LayoutParams/<init>(II)V
invokevirtual android/widget/FrameLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
new android/widget/FrameLayout
dup
aload 2
invokespecial android/widget/FrameLayout/<init>(Landroid/content/Context;)V
astore 2
aload 2
ldc_w 16711683
invokevirtual android/widget/FrameLayout/setId(I)V
new android/widget/TextView
dup
aload 0
invokevirtual android/support/v4/app/ListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokespecial android/widget/TextView/<init>(Landroid/content/Context;)V
astore 3
aload 3
ldc_w 16711681
invokevirtual android/widget/TextView/setId(I)V
aload 3
bipush 17
invokevirtual android/widget/TextView/setGravity(I)V
aload 2
aload 3
new android/widget/FrameLayout$LayoutParams
dup
iconst_m1
iconst_m1
invokespecial android/widget/FrameLayout$LayoutParams/<init>(II)V
invokevirtual android/widget/FrameLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
new android/widget/ListView
dup
aload 0
invokevirtual android/support/v4/app/ListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokespecial android/widget/ListView/<init>(Landroid/content/Context;)V
astore 3
aload 3
ldc_w 16908298
invokevirtual android/widget/ListView/setId(I)V
aload 3
iconst_0
invokevirtual android/widget/ListView/setDrawSelectorOnTop(Z)V
aload 2
aload 3
new android/widget/FrameLayout$LayoutParams
dup
iconst_m1
iconst_m1
invokespecial android/widget/FrameLayout$LayoutParams/<init>(II)V
invokevirtual android/widget/FrameLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 1
aload 2
new android/widget/FrameLayout$LayoutParams
dup
iconst_m1
iconst_m1
invokespecial android/widget/FrameLayout$LayoutParams/<init>(II)V
invokevirtual android/widget/FrameLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 1
new android/widget/FrameLayout$LayoutParams
dup
iconst_m1
iconst_m1
invokespecial android/widget/FrameLayout$LayoutParams/<init>(II)V
invokevirtual android/widget/FrameLayout/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 1
areturn
.limit locals 4
.limit stack 6
.end method

.method public onDestroyView()V
aload 0
getfield android/support/v4/app/ListFragment/mHandler Landroid/os/Handler;
aload 0
getfield android/support/v4/app/ListFragment/mRequestFocus Ljava/lang/Runnable;
invokevirtual android/os/Handler/removeCallbacks(Ljava/lang/Runnable;)V
aload 0
aconst_null
putfield android/support/v4/app/ListFragment/mList Landroid/widget/ListView;
aload 0
iconst_0
putfield android/support/v4/app/ListFragment/mListShown Z
aload 0
aconst_null
putfield android/support/v4/app/ListFragment/mListContainer Landroid/view/View;
aload 0
aconst_null
putfield android/support/v4/app/ListFragment/mProgressContainer Landroid/view/View;
aload 0
aconst_null
putfield android/support/v4/app/ListFragment/mEmptyView Landroid/view/View;
aload 0
aconst_null
putfield android/support/v4/app/ListFragment/mStandardEmptyView Landroid/widget/TextView;
aload 0
invokespecial android/support/v4/app/Fragment/onDestroyView()V
return
.limit locals 1
.limit stack 2
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
return
.limit locals 6
.limit stack 0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
aload 0
aload 1
aload 2
invokespecial android/support/v4/app/Fragment/onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
aload 0
invokespecial android/support/v4/app/ListFragment/ensureList()V
return
.limit locals 3
.limit stack 3
.end method

.method public setEmptyText(Ljava/lang/CharSequence;)V
aload 0
invokespecial android/support/v4/app/ListFragment/ensureList()V
aload 0
getfield android/support/v4/app/ListFragment/mStandardEmptyView Landroid/widget/TextView;
ifnonnull L0
new java/lang/IllegalStateException
dup
ldc "Can't be used with a custom content view"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield android/support/v4/app/ListFragment/mStandardEmptyView Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield android/support/v4/app/ListFragment/mEmptyText Ljava/lang/CharSequence;
ifnonnull L1
aload 0
getfield android/support/v4/app/ListFragment/mList Landroid/widget/ListView;
aload 0
getfield android/support/v4/app/ListFragment/mStandardEmptyView Landroid/widget/TextView;
invokevirtual android/widget/ListView/setEmptyView(Landroid/view/View;)V
L1:
aload 0
aload 1
putfield android/support/v4/app/ListFragment/mEmptyText Ljava/lang/CharSequence;
return
.limit locals 2
.limit stack 3
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
iconst_0
istore 3
aload 0
getfield android/support/v4/app/ListFragment/mAdapter Landroid/widget/ListAdapter;
ifnull L0
iconst_1
istore 2
L1:
aload 0
aload 1
putfield android/support/v4/app/ListFragment/mAdapter Landroid/widget/ListAdapter;
aload 0
getfield android/support/v4/app/ListFragment/mList Landroid/widget/ListView;
ifnull L2
aload 0
getfield android/support/v4/app/ListFragment/mList Landroid/widget/ListView;
aload 1
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield android/support/v4/app/ListFragment/mListShown Z
ifne L2
iload 2
ifne L2
aload 0
invokevirtual android/support/v4/app/ListFragment/getView()Landroid/view/View;
invokevirtual android/view/View/getWindowToken()Landroid/os/IBinder;
ifnull L3
iconst_1
istore 3
L3:
aload 0
iconst_1
iload 3
invokespecial android/support/v4/app/ListFragment/setListShown(ZZ)V
L2:
return
L0:
iconst_0
istore 2
goto L1
.limit locals 4
.limit stack 3
.end method

.method public setListShown(Z)V
aload 0
iload 1
iconst_1
invokespecial android/support/v4/app/ListFragment/setListShown(ZZ)V
return
.limit locals 2
.limit stack 3
.end method

.method public setListShownNoAnimation(Z)V
aload 0
iload 1
iconst_0
invokespecial android/support/v4/app/ListFragment/setListShown(ZZ)V
return
.limit locals 2
.limit stack 3
.end method

.method public setSelection(I)V
aload 0
invokespecial android/support/v4/app/ListFragment/ensureList()V
aload 0
getfield android/support/v4/app/ListFragment/mList Landroid/widget/ListView;
iload 1
invokevirtual android/widget/ListView/setSelection(I)V
return
.limit locals 2
.limit stack 2
.end method
