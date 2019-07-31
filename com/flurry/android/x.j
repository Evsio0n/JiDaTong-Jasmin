.bytecode 50.0
.class final synchronized com/flurry/android/x
.super android/widget/LinearLayout

.field private 'a' Landroid/view/View;

.field private 'b' Ljava/util/List;

.field private 'c' Z

.field private synthetic 'd' Lcom/flurry/android/CatalogActivity;

.method public <init>(Lcom/flurry/android/CatalogActivity;Landroid/content/Context;)V
aload 0
aload 1
putfield com/flurry/android/x/d Lcom/flurry/android/CatalogActivity;
aload 0
aload 2
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/flurry/android/x/b Ljava/util/List;
aload 0
iconst_1
putfield com/flurry/android/x/c Z
aload 0
iconst_1
invokevirtual com/flurry/android/x/setOrientation(I)V
aload 0
bipush 48
invokevirtual com/flurry/android/x/setGravity(I)V
aload 0
new com/flurry/android/s
dup
aload 1
aload 2
invokespecial com/flurry/android/s/<init>(Lcom/flurry/android/CatalogActivity;Landroid/content/Context;)V
putfield com/flurry/android/x/a Landroid/view/View;
aload 0
getfield com/flurry/android/x/a Landroid/view/View;
sipush 10002
invokevirtual android/view/View/setId(I)V
aload 0
getfield com/flurry/android/x/a Landroid/view/View;
aload 1
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
aload 2
invokevirtual com/flurry/android/x/a(Landroid/content/Context;)Ljava/util/List;
aload 0
getfield com/flurry/android/x/c Z
invokespecial com/flurry/android/x/a(Ljava/util/List;Z)V
return
.limit locals 3
.limit stack 5
.end method

.method private a(Ljava/util/List;Z)V
aload 0
invokevirtual com/flurry/android/x/removeAllViews()V
new android/widget/LinearLayout$LayoutParams
dup
iconst_m1
bipush -2
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
astore 3
aload 3
iconst_0
iconst_0
iconst_0
iconst_0
invokevirtual android/widget/LinearLayout$LayoutParams/setMargins(IIII)V
aload 0
aload 0
getfield com/flurry/android/x/a Landroid/view/View;
aload 3
invokevirtual com/flurry/android/x/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 1
ifnull L0
aload 0
getfield com/flurry/android/x/b Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
getfield com/flurry/android/x/b Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L0:
iload 2
ifeq L1
aload 0
getfield com/flurry/android/x/b Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L2:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/flurry/android/z
astore 4
aload 0
aload 4
aload 3
invokevirtual com/flurry/android/x/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 4
invokevirtual com/flurry/android/z/a()Lcom/flurry/android/p;
new com/flurry/android/f
dup
iconst_3
aload 0
getfield com/flurry/android/x/d Lcom/flurry/android/CatalogActivity;
invokestatic com/flurry/android/CatalogActivity/b(Lcom/flurry/android/CatalogActivity;)J
invokespecial com/flurry/android/f/<init>(BJ)V
invokevirtual com/flurry/android/p/a(Lcom/flurry/android/f;)V
goto L2
L1:
aload 0
invokevirtual com/flurry/android/x/refreshDrawableState()V
return
.limit locals 5
.limit stack 6
.end method

.method final a(Landroid/content/Context;)Ljava/util/List;
aconst_null
astore 4
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
iconst_1
istore 2
L0:
iload 2
iconst_3
if_icmpgt L1
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Flurry_Canvas_Hook_"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
aload 0
getfield com/flurry/android/x/d Lcom/flurry/android/CatalogActivity;
invokestatic com/flurry/android/CatalogActivity/a(Lcom/flurry/android/CatalogActivity;)Lcom/flurry/android/p;
ifnonnull L2
aconst_null
astore 3
L3:
aload 3
ifnonnull L4
aload 4
astore 3
L5:
aload 0
getfield com/flurry/android/x/d Lcom/flurry/android/CatalogActivity;
invokestatic com/flurry/android/CatalogActivity/c(Lcom/flurry/android/CatalogActivity;)Lcom/flurry/android/v;
aload 1
aload 5
aload 3
iconst_1
iconst_1
invokevirtual com/flurry/android/v/a(Landroid/content/Context;Ljava/util/List;Ljava/lang/Long;IZ)Ljava/util/List;
astore 1
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L6:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L7
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/flurry/android/z
aload 0
getfield com/flurry/android/x/d Lcom/flurry/android/CatalogActivity;
invokevirtual com/flurry/android/z/setOnClickListener(Landroid/view/View$OnClickListener;)V
goto L6
L2:
aload 0
getfield com/flurry/android/x/d Lcom/flurry/android/CatalogActivity;
invokestatic com/flurry/android/CatalogActivity/a(Lcom/flurry/android/CatalogActivity;)Lcom/flurry/android/p;
getfield com/flurry/android/p/c Lcom/flurry/android/w;
astore 3
goto L3
L4:
aload 3
getfield com/flurry/android/w/a J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
astore 3
goto L5
L7:
aload 1
areturn
.limit locals 6
.limit stack 6
.end method

.method final a()V
aload 0
getfield com/flurry/android/x/c Z
ifne L0
iconst_1
istore 1
L1:
aload 0
iload 1
putfield com/flurry/android/x/c Z
aload 0
aconst_null
aload 0
getfield com/flurry/android/x/c Z
invokespecial com/flurry/android/x/a(Ljava/util/List;Z)V
return
L0:
iconst_0
istore 1
goto L1
.limit locals 2
.limit stack 3
.end method

.method final a(Ljava/util/List;)V
aload 0
aload 1
aload 0
getfield com/flurry/android/x/c Z
invokespecial com/flurry/android/x/a(Ljava/util/List;Z)V
return
.limit locals 2
.limit stack 3
.end method

.method final b()Ljava/util/List;
aload 0
getfield com/flurry/android/x/b Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method
