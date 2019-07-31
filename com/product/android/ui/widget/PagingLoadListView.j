.bytecode 50.0
.class public synchronized com/product/android/ui/widget/PagingLoadListView
.super com/huewu/pla/lib/MultiColumnListView
.inner class inner com/product/android/ui/widget/PagingLoadListView$1
.inner class inner com/product/android/ui/widget/PagingLoadListView$2
.inner class public static abstract interface IListViewNextPageListener inner com/product/android/ui/widget/PagingLoadListView$IListViewNextPageListener outer com/product/android/ui/widget/PagingLoadListView
.inner class public static abstract interface IScrollDirectionListener inner com/product/android/ui/widget/PagingLoadListView$IScrollDirectionListener outer com/product/android/ui/widget/PagingLoadListView
.inner class public PagingConfig inner com/product/android/ui/widget/PagingLoadListView$PagingConfig outer com/product/android/ui/widget/PagingLoadListView

.field private 'TAG' Ljava/lang/String;

.field private 'adapter' Lcom/product/android/ui/adapter/BaseListViewAdapter;

.field private 'bolCanLoadNextPage' Z

.field private 'curLastItemPos' I

.field private 'curPageNumber' I

.field private 'curTotalNumber' I

.field private 'loadedNumber' I

.field private 'loadingDialog' Lcom/product/android/ui/widget/PagingLoadFooterView;

.field private 'loadingFailIv' Landroid/widget/ImageView;

.field private 'loadingProgressBar' Landroid/widget/ProgressBar;

.field private 'loadingTv' Landroid/widget/TextView;

.field private 'mLastMotionY' F

.field 'nextPageListener' Lcom/product/android/ui/widget/PagingLoadListView$IListViewNextPageListener;

.field private 'scrollDirectionListener' Lcom/product/android/ui/widget/PagingLoadListView$IScrollDirectionListener;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/huewu/pla/lib/MultiColumnListView/<init>(Landroid/content/Context;)V
aload 0
ldc "PagingLoadListView"
putfield com/product/android/ui/widget/PagingLoadListView/TAG Ljava/lang/String;
aload 0
aconst_null
putfield com/product/android/ui/widget/PagingLoadListView/loadingDialog Lcom/product/android/ui/widget/PagingLoadFooterView;
aload 0
aconst_null
putfield com/product/android/ui/widget/PagingLoadListView/adapter Lcom/product/android/ui/adapter/BaseListViewAdapter;
aload 0
iconst_1
putfield com/product/android/ui/widget/PagingLoadListView/bolCanLoadNextPage Z
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial com/huewu/pla/lib/MultiColumnListView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
ldc "PagingLoadListView"
putfield com/product/android/ui/widget/PagingLoadListView/TAG Ljava/lang/String;
aload 0
aconst_null
putfield com/product/android/ui/widget/PagingLoadListView/loadingDialog Lcom/product/android/ui/widget/PagingLoadFooterView;
aload 0
aconst_null
putfield com/product/android/ui/widget/PagingLoadListView/adapter Lcom/product/android/ui/adapter/BaseListViewAdapter;
aload 0
iconst_1
putfield com/product/android/ui/widget/PagingLoadListView/bolCanLoadNextPage Z
aload 0
new com/product/android/ui/widget/PagingLoadFooterView
dup
aload 1
getstatic com/nd/android/u/allcommon/R$layout/pagingload_footer I
invokespecial com/product/android/ui/widget/PagingLoadFooterView/<init>(Landroid/content/Context;I)V
putfield com/product/android/ui/widget/PagingLoadListView/loadingDialog Lcom/product/android/ui/widget/PagingLoadFooterView;
aload 0
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/loadingDialog Lcom/product/android/ui/widget/PagingLoadFooterView;
invokevirtual com/product/android/ui/widget/PagingLoadListView/addFooterView(Landroid/view/View;)V
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/loadingDialog Lcom/product/android/ui/widget/PagingLoadFooterView;
bipush 8
invokevirtual com/product/android/ui/widget/PagingLoadFooterView/setVisibility(I)V
aload 0
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/loadingDialog Lcom/product/android/ui/widget/PagingLoadFooterView;
getstatic com/nd/android/u/allcommon/R$id/footerpb I
invokevirtual com/product/android/ui/widget/PagingLoadFooterView/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/product/android/ui/widget/PagingLoadListView/loadingProgressBar Landroid/widget/ProgressBar;
aload 0
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/loadingDialog Lcom/product/android/ui/widget/PagingLoadFooterView;
getstatic com/nd/android/u/allcommon/R$id/footertv I
invokevirtual com/product/android/ui/widget/PagingLoadFooterView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/product/android/ui/widget/PagingLoadListView/loadingTv Landroid/widget/TextView;
aload 0
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/loadingDialog Lcom/product/android/ui/widget/PagingLoadFooterView;
getstatic com/nd/android/u/allcommon/R$id/nodataiv I
invokevirtual com/product/android/ui/widget/PagingLoadFooterView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/product/android/ui/widget/PagingLoadListView/loadingFailIv Landroid/widget/ImageView;
return
.limit locals 3
.limit stack 5
.end method

.method static synthetic access$000(Lcom/product/android/ui/widget/PagingLoadListView;)I
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/curLastItemPos I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$002(Lcom/product/android/ui/widget/PagingLoadListView;I)I
aload 0
iload 1
putfield com/product/android/ui/widget/PagingLoadListView/curLastItemPos I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/product/android/ui/widget/PagingLoadListView;)I
aload 0
invokespecial com/product/android/ui/widget/PagingLoadListView/headerViewCount()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/product/android/ui/widget/PagingLoadListView;)I
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/curTotalNumber I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/product/android/ui/widget/PagingLoadListView;)Z
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/bolCanLoadNextPage Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$302(Lcom/product/android/ui/widget/PagingLoadListView;Z)Z
aload 0
iload 1
putfield com/product/android/ui/widget/PagingLoadListView/bolCanLoadNextPage Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/product/android/ui/widget/PagingLoadListView;)Lcom/product/android/ui/widget/PagingLoadFooterView;
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/loadingDialog Lcom/product/android/ui/widget/PagingLoadFooterView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/product/android/ui/widget/PagingLoadListView;)Landroid/widget/ProgressBar;
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/loadingProgressBar Landroid/widget/ProgressBar;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/product/android/ui/widget/PagingLoadListView;)Landroid/widget/TextView;
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/loadingTv Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method private addNextPageDataList(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<*>;)V"
aload 1
ifnull L0
aload 1
invokevirtual java/util/ArrayList/size()I
ifle L0
aload 0
aload 1
invokevirtual java/util/ArrayList/size()I
putfield com/product/android/ui/widget/PagingLoadListView/loadedNumber I
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/adapter Lcom/product/android/ui/adapter/BaseListViewAdapter;
aload 1
invokevirtual com/product/android/ui/adapter/BaseListViewAdapter/addItemList(Ljava/util/ArrayList;)V
aload 0
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/adapter Lcom/product/android/ui/adapter/BaseListViewAdapter;
invokevirtual com/product/android/ui/adapter/BaseListViewAdapter/getCount()I
putfield com/product/android/ui/widget/PagingLoadListView/curTotalNumber I
return
L0:
aload 0
iconst_0
putfield com/product/android/ui/widget/PagingLoadListView/loadedNumber I
return
.limit locals 2
.limit stack 2
.end method

.method private hasFooterView()Z
aload 0
invokevirtual com/product/android/ui/widget/PagingLoadListView/getFooterViewsCount()I
iconst_1
if_icmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method private headerViewCount()I
aload 0
invokevirtual com/product/android/ui/widget/PagingLoadListView/getHeaderViewsCount()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method private removeFooterView()V
aload 0
invokevirtual com/product/android/ui/widget/PagingLoadListView/getAdapter()Landroid/widget/ListAdapter;
ifnull L0
aload 0
invokespecial com/product/android/ui/widget/PagingLoadListView/hasFooterView()Z
ifeq L0
aload 0
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/loadingDialog Lcom/product/android/ui/widget/PagingLoadFooterView;
invokevirtual com/product/android/ui/widget/PagingLoadListView/removeFooterView(Landroid/view/View;)Z
pop
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/adapter Lcom/product/android/ui/adapter/BaseListViewAdapter;
invokevirtual com/product/android/ui/adapter/BaseListViewAdapter/notifyDataSetChanged()V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method private resetLoadingDialog()V
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/loadingProgressBar Landroid/widget/ProgressBar;
iconst_0
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/loadingTv Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
invokevirtual com/product/android/ui/widget/PagingLoadListView/getFooterViewsCount()I
ifne L0
aload 0
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/loadingDialog Lcom/product/android/ui/widget/PagingLoadFooterView;
invokevirtual com/product/android/ui/widget/PagingLoadListView/addFooterView(Landroid/view/View;)V
L0:
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/loadingDialog Lcom/product/android/ui/widget/PagingLoadFooterView;
bipush 8
invokevirtual com/product/android/ui/widget/PagingLoadFooterView/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public asyncLoadNextPage()V
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/nextPageListener Lcom/product/android/ui/widget/PagingLoadListView$IListViewNextPageListener;
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/curPageNumber I
iconst_1
iadd
invokeinterface com/product/android/ui/widget/PagingLoadListView$IListViewNextPageListener/onNextPage(I)V 1
return
.limit locals 1
.limit stack 3
.end method

.method public cloneParam(Lcom/product/android/ui/widget/PagingLoadListView;)V
aload 0
aload 1
getfield com/product/android/ui/widget/PagingLoadListView/curTotalNumber I
putfield com/product/android/ui/widget/PagingLoadListView/curTotalNumber I
aload 0
aload 1
getfield com/product/android/ui/widget/PagingLoadListView/curLastItemPos I
putfield com/product/android/ui/widget/PagingLoadListView/curLastItemPos I
aload 0
aload 1
getfield com/product/android/ui/widget/PagingLoadListView/curPageNumber I
putfield com/product/android/ui/widget/PagingLoadListView/curPageNumber I
aload 0
aload 1
getfield com/product/android/ui/widget/PagingLoadListView/bolCanLoadNextPage Z
putfield com/product/android/ui/widget/PagingLoadListView/bolCanLoadNextPage Z
aload 0
aload 1
getfield com/product/android/ui/widget/PagingLoadListView/loadedNumber I
putfield com/product/android/ui/widget/PagingLoadListView/loadedNumber I
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/loadingDialog Lcom/product/android/ui/widget/PagingLoadFooterView;
aload 1
getfield com/product/android/ui/widget/PagingLoadListView/loadingDialog Lcom/product/android/ui/widget/PagingLoadFooterView;
invokevirtual com/product/android/ui/widget/PagingLoadFooterView/getVisibility()I
invokevirtual com/product/android/ui/widget/PagingLoadFooterView/setVisibility(I)V
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/loadingProgressBar Landroid/widget/ProgressBar;
aload 1
getfield com/product/android/ui/widget/PagingLoadListView/loadingProgressBar Landroid/widget/ProgressBar;
invokevirtual android/widget/ProgressBar/getVisibility()I
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/loadingFailIv Landroid/widget/ImageView;
aload 1
getfield com/product/android/ui/widget/PagingLoadListView/loadingFailIv Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getVisibility()I
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/loadingTv Landroid/widget/TextView;
aload 1
getfield com/product/android/ui/widget/PagingLoadListView/loadingTv Landroid/widget/TextView;
invokevirtual android/widget/TextView/getVisibility()I
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/loadingTv Landroid/widget/TextView;
aload 1
getfield com/product/android/ui/widget/PagingLoadListView/loadingTv Landroid/widget/TextView;
invokevirtual android/widget/TextView/getText()Ljava/lang/CharSequence;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 2
.end method

.method public getCurrentTotalNumber()I
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/curTotalNumber I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public handleData(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<*>;)V"
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/curTotalNumber I
ifne L0
aload 1
ifnull L1
aload 1
invokevirtual java/util/ArrayList/size()I
ifne L0
L1:
aload 0
invokevirtual com/product/android/ui/widget/PagingLoadListView/handleFailure()V
return
L0:
aload 0
aload 1
invokevirtual com/product/android/ui/widget/PagingLoadListView/handleSuccessAndAddData(Ljava/util/ArrayList;)V
return
.limit locals 2
.limit stack 2
.end method

.method public handleFailure()V
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/loadingDialog Lcom/product/android/ui/widget/PagingLoadFooterView;
iconst_0
invokevirtual com/product/android/ui/widget/PagingLoadFooterView/setVisibility(I)V
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/loadingProgressBar Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/loadingFailIv Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/loadingTv Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/loadingTv Landroid/widget/TextView;
ldc "\u6682\u65e0\u6570\u636e"
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 1
.limit stack 2
.end method

.method public handleSuccess()V
aload 0
iconst_1
putfield com/product/android/ui/widget/PagingLoadListView/bolCanLoadNextPage Z
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/loadedNumber I
bipush 20
if_icmpge L0
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/loadingDialog Lcom/product/android/ui/widget/PagingLoadFooterView;
iconst_0
invokevirtual com/product/android/ui/widget/PagingLoadFooterView/setVisibility(I)V
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/loadingProgressBar Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/loadingFailIv Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/curLastItemPos I
ifle L1
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/loadingTv Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/loadingTv Landroid/widget/TextView;
ldc "\u5230\u5e95\u4e86\u54e6!"
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L1:
aload 0
iconst_0
putfield com/product/android/ui/widget/PagingLoadListView/bolCanLoadNextPage Z
return
L0:
aload 0
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/curPageNumber I
iconst_1
iadd
putfield com/product/android/ui/widget/PagingLoadListView/curPageNumber I
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/loadingDialog Lcom/product/android/ui/widget/PagingLoadFooterView;
bipush 8
invokevirtual com/product/android/ui/widget/PagingLoadFooterView/setVisibility(I)V
return
.limit locals 1
.limit stack 3
.end method

.method public handleSuccessAndAddData(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<*>;)V"
aload 0
aload 1
invokespecial com/product/android/ui/widget/PagingLoadListView/addNextPageDataList(Ljava/util/ArrayList;)V
aload 0
invokevirtual com/product/android/ui/widget/PagingLoadListView/handleSuccess()V
return
.limit locals 2
.limit stack 2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
aload 1
invokevirtual android/view/MotionEvent/getY()F
fstore 2
aload 1
invokevirtual android/view/MotionEvent/getAction()I
tableswitch 0
L0
L1
default : L2
L2:
aload 0
aload 1
invokespecial com/huewu/pla/lib/MultiColumnListView/onTouchEvent(Landroid/view/MotionEvent;)Z
ireturn
L1:
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/mLastMotionY F
fload 2
fcmpg
ifge L3
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/scrollDirectionListener Lcom/product/android/ui/widget/PagingLoadListView$IScrollDirectionListener;
ifnull L2
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/scrollDirectionListener Lcom/product/android/ui/widget/PagingLoadListView$IScrollDirectionListener;
invokeinterface com/product/android/ui/widget/PagingLoadListView$IScrollDirectionListener/onScrollUp()V 0
goto L2
L3:
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/mLastMotionY F
fload 2
fcmpl
ifle L2
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/scrollDirectionListener Lcom/product/android/ui/widget/PagingLoadListView$IScrollDirectionListener;
ifnull L2
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/scrollDirectionListener Lcom/product/android/ui/widget/PagingLoadListView$IScrollDirectionListener;
invokeinterface com/product/android/ui/widget/PagingLoadListView$IScrollDirectionListener/onScrollDown()V 0
goto L2
L0:
aload 0
fload 2
putfield com/product/android/ui/widget/PagingLoadListView/mLastMotionY F
goto L2
.limit locals 3
.limit stack 2
.end method

.method public removeLoadingDialog()V
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/loadingDialog Lcom/product/android/ui/widget/PagingLoadFooterView;
bipush 8
invokevirtual com/product/android/ui/widget/PagingLoadFooterView/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public resetParams()V
aload 0
invokespecial com/product/android/ui/widget/PagingLoadListView/resetLoadingDialog()V
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/adapter Lcom/product/android/ui/adapter/BaseListViewAdapter;
ifnull L0
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/adapter Lcom/product/android/ui/adapter/BaseListViewAdapter;
invokevirtual com/product/android/ui/adapter/BaseListViewAdapter/getDataList()Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/adapter Lcom/product/android/ui/adapter/BaseListViewAdapter;
invokevirtual com/product/android/ui/adapter/BaseListViewAdapter/getDataList()Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/adapter Lcom/product/android/ui/adapter/BaseListViewAdapter;
getfield com/product/android/ui/adapter/BaseListViewAdapter/mHRRecognizeSet Ljava/util/TreeSet;
invokevirtual java/util/TreeSet/clear()V
aload 0
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/adapter Lcom/product/android/ui/adapter/BaseListViewAdapter;
invokevirtual com/product/android/ui/widget/PagingLoadListView/setAdapter(Landroid/widget/ListAdapter;)V
L0:
aload 0
iconst_1
putfield com/product/android/ui/widget/PagingLoadListView/bolCanLoadNextPage Z
aload 0
iconst_0
putfield com/product/android/ui/widget/PagingLoadListView/curTotalNumber I
aload 0
iconst_0
putfield com/product/android/ui/widget/PagingLoadListView/curLastItemPos I
aload 0
iconst_0
putfield com/product/android/ui/widget/PagingLoadListView/curPageNumber I
return
.limit locals 1
.limit stack 2
.end method

.method public volatile synthetic setAdapter(Landroid/widget/Adapter;)V
aload 0
aload 1
checkcast android/widget/ListAdapter
invokevirtual com/product/android/ui/widget/PagingLoadListView/setAdapter(Landroid/widget/ListAdapter;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
aload 0
aload 1
invokespecial com/huewu/pla/lib/MultiColumnListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 1
ifnull L0
aload 0
aload 1
invokeinterface android/widget/ListAdapter/getCount()I 0
putfield com/product/android/ui/widget/PagingLoadListView/curTotalNumber I
aload 0
aload 1
checkcast com/product/android/ui/adapter/BaseListViewAdapter
putfield com/product/android/ui/widget/PagingLoadListView/adapter Lcom/product/android/ui/adapter/BaseListViewAdapter;
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public setCurrentPageNumber(I)V
aload 0
iload 1
putfield com/product/android/ui/widget/PagingLoadListView/curPageNumber I
return
.limit locals 2
.limit stack 2
.end method

.method public setCurrentTotalNumber(I)V
aload 0
iload 1
putfield com/product/android/ui/widget/PagingLoadListView/curTotalNumber I
return
.limit locals 2
.limit stack 2
.end method

.method public setNewAdapter(Lcom/product/android/ui/adapter/BaseListViewAdapter;)V
aload 0
aload 1
putfield com/product/android/ui/widget/PagingLoadListView/adapter Lcom/product/android/ui/adapter/BaseListViewAdapter;
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/adapter Lcom/product/android/ui/adapter/BaseListViewAdapter;
invokevirtual com/product/android/ui/adapter/BaseListViewAdapter/notifyDataSetChanged()V
aload 0
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/adapter Lcom/product/android/ui/adapter/BaseListViewAdapter;
invokevirtual com/product/android/ui/adapter/BaseListViewAdapter/getCount()I
putfield com/product/android/ui/widget/PagingLoadListView/curTotalNumber I
return
.limit locals 2
.limit stack 2
.end method

.method public setOnScrollDirectionListener(Lcom/product/android/ui/widget/PagingLoadListView$IScrollDirectionListener;)V
aload 0
aload 1
putfield com/product/android/ui/widget/PagingLoadListView/scrollDirectionListener Lcom/product/android/ui/widget/PagingLoadListView$IScrollDirectionListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setOnScrollListener(Lcom/product/android/ui/widget/PagingLoadListView$IListViewNextPageListener;Lcom/product/android/ui/adapter/BaseListViewAdapter;)V
aload 0
aload 1
putfield com/product/android/ui/widget/PagingLoadListView/nextPageListener Lcom/product/android/ui/widget/PagingLoadListView$IListViewNextPageListener;
aload 0
aload 2
putfield com/product/android/ui/widget/PagingLoadListView/adapter Lcom/product/android/ui/adapter/BaseListViewAdapter;
aload 0
new com/product/android/ui/widget/PagingLoadListView$1
dup
aload 0
invokespecial com/product/android/ui/widget/PagingLoadListView$1/<init>(Lcom/product/android/ui/widget/PagingLoadListView;)V
invokevirtual com/product/android/ui/widget/PagingLoadListView/setOnScrollListener(Lcom/huewu/pla/lib/internal/PLA_AbsListView$OnScrollListener;)V
return
.limit locals 3
.limit stack 4
.end method

.method public setPauseOnScrollListener(Lcom/nostra13/universalimageloader/core/ImageLoader;Lcom/product/android/ui/widget/PagingLoadListView$IListViewNextPageListener;Lcom/product/android/ui/adapter/BaseListViewAdapter;)V
aload 0
aload 2
putfield com/product/android/ui/widget/PagingLoadListView/nextPageListener Lcom/product/android/ui/widget/PagingLoadListView$IListViewNextPageListener;
aload 0
aload 3
putfield com/product/android/ui/widget/PagingLoadListView/adapter Lcom/product/android/ui/adapter/BaseListViewAdapter;
aload 0
new com/product/android/ui/widget/PagingLoadListView$2
dup
aload 0
aload 1
invokespecial com/product/android/ui/widget/PagingLoadListView$2/<init>(Lcom/product/android/ui/widget/PagingLoadListView;Lcom/nostra13/universalimageloader/core/ImageLoader;)V
invokevirtual com/product/android/ui/widget/PagingLoadListView/setOnScrollListener(Lcom/huewu/pla/lib/internal/PLA_AbsListView$OnScrollListener;)V
return
.limit locals 4
.limit stack 5
.end method

.method public showLoadingDialog()V
aload 0
getfield com/product/android/ui/widget/PagingLoadListView/loadingDialog Lcom/product/android/ui/widget/PagingLoadFooterView;
iconst_0
invokevirtual com/product/android/ui/widget/PagingLoadFooterView/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method
