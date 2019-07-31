.bytecode 50.0
.class public synchronized com/common/android/ui/wheel/WheelRecycle
.super java/lang/Object

.field private 'emptyItems' Ljava/util/List; signature "Ljava/util/List<Landroid/view/View;>;"

.field private 'items' Ljava/util/List; signature "Ljava/util/List<Landroid/view/View;>;"

.field private 'wheel' Lcom/common/android/ui/wheel/WheelView;

.method public <init>(Lcom/common/android/ui/wheel/WheelView;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/common/android/ui/wheel/WheelRecycle/wheel Lcom/common/android/ui/wheel/WheelView;
return
.limit locals 2
.limit stack 2
.end method

.method private addView(Landroid/view/View;Ljava/util/List;)Ljava/util/List;
.signature "(Landroid/view/View;Ljava/util/List<Landroid/view/View;>;)Ljava/util/List<Landroid/view/View;>;"
aload 2
astore 3
aload 2
ifnonnull L0
new java/util/LinkedList
dup
invokespecial java/util/LinkedList/<init>()V
astore 3
L0:
aload 3
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
areturn
.limit locals 4
.limit stack 2
.end method

.method private getCachedView(Ljava/util/List;)Landroid/view/View;
.signature "(Ljava/util/List<Landroid/view/View;>;)Landroid/view/View;"
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/size()I 0
ifle L0
aload 1
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast android/view/View
astore 2
aload 1
iconst_0
invokeinterface java/util/List/remove(I)Ljava/lang/Object; 1
pop
aload 2
areturn
L0:
aconst_null
areturn
.limit locals 3
.limit stack 2
.end method

.method private recycleView(Landroid/view/View;I)V
aload 0
getfield com/common/android/ui/wheel/WheelRecycle/wheel Lcom/common/android/ui/wheel/WheelView;
invokevirtual com/common/android/ui/wheel/WheelView/getViewAdapter()Lcom/common/android/ui/wheel/WheelViewAdapter;
invokeinterface com/common/android/ui/wheel/WheelViewAdapter/getItemsCount()I 0
istore 3
iload 2
iflt L0
iload 2
iload 3
if_icmplt L1
L0:
aload 0
getfield com/common/android/ui/wheel/WheelRecycle/wheel Lcom/common/android/ui/wheel/WheelView;
invokevirtual com/common/android/ui/wheel/WheelView/isCyclic()Z
ifne L1
aload 0
aload 0
aload 1
aload 0
getfield com/common/android/ui/wheel/WheelRecycle/emptyItems Ljava/util/List;
invokespecial com/common/android/ui/wheel/WheelRecycle/addView(Landroid/view/View;Ljava/util/List;)Ljava/util/List;
putfield com/common/android/ui/wheel/WheelRecycle/emptyItems Ljava/util/List;
return
L1:
aload 0
aload 0
aload 1
aload 0
getfield com/common/android/ui/wheel/WheelRecycle/items Ljava/util/List;
invokespecial com/common/android/ui/wheel/WheelRecycle/addView(Landroid/view/View;Ljava/util/List;)Ljava/util/List;
putfield com/common/android/ui/wheel/WheelRecycle/items Ljava/util/List;
return
.limit locals 4
.limit stack 4
.end method

.method public clearAll()V
aload 0
getfield com/common/android/ui/wheel/WheelRecycle/items Ljava/util/List;
ifnull L0
aload 0
getfield com/common/android/ui/wheel/WheelRecycle/items Ljava/util/List;
invokeinterface java/util/List/clear()V 0
L0:
aload 0
getfield com/common/android/ui/wheel/WheelRecycle/emptyItems Ljava/util/List;
ifnull L1
aload 0
getfield com/common/android/ui/wheel/WheelRecycle/emptyItems Ljava/util/List;
invokeinterface java/util/List/clear()V 0
L1:
return
.limit locals 1
.limit stack 1
.end method

.method public getEmptyItem()Landroid/view/View;
aload 0
aload 0
getfield com/common/android/ui/wheel/WheelRecycle/emptyItems Ljava/util/List;
invokespecial com/common/android/ui/wheel/WheelRecycle/getCachedView(Ljava/util/List;)Landroid/view/View;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getItem()Landroid/view/View;
aload 0
aload 0
getfield com/common/android/ui/wheel/WheelRecycle/items Ljava/util/List;
invokespecial com/common/android/ui/wheel/WheelRecycle/getCachedView(Ljava/util/List;)Landroid/view/View;
areturn
.limit locals 1
.limit stack 2
.end method

.method public recycleItems(Landroid/widget/LinearLayout;ILcom/common/android/ui/wheel/ItemsRange;)I
iload 2
istore 5
iconst_0
istore 6
iload 2
istore 4
iload 5
istore 2
iload 6
istore 5
L0:
iload 5
aload 1
invokevirtual android/widget/LinearLayout/getChildCount()I
if_icmpge L1
aload 3
iload 2
invokevirtual com/common/android/ui/wheel/ItemsRange/contains(I)Z
ifne L2
aload 0
aload 1
iload 5
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
iload 2
invokespecial com/common/android/ui/wheel/WheelRecycle/recycleView(Landroid/view/View;I)V
aload 1
iload 5
invokevirtual android/widget/LinearLayout/removeViewAt(I)V
iload 5
istore 6
iload 4
istore 7
iload 5
ifne L3
iload 4
iconst_1
iadd
istore 7
iload 5
istore 6
L3:
iload 2
iconst_1
iadd
istore 2
iload 6
istore 5
iload 7
istore 4
goto L0
L2:
iload 5
iconst_1
iadd
istore 6
iload 4
istore 7
goto L3
L1:
iload 4
ireturn
.limit locals 8
.limit stack 3
.end method
