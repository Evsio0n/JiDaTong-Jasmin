.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/team/view/PopMenuActivity
.super android/app/Activity
.implements android/view/View$OnClickListener

.field public static final 'POPMENU_LAYOUT_RES' Ljava/lang/String; = "layoutresid"

.field public static final 'POPMENU_ONCLICK_COUNT' Ljava/lang/String; = "onclickcount"

.field public static final 'POPMENU_ONCLICK_VIEW_ID_BASE' Ljava/lang/String; = "viewid"

.field public static final 'POPMENU_ONCLICK_VIEW_RESULT_BASE' Ljava/lang/String; = "result"

.field public static final 'POPMENU_RESULT_CODE_CANCEL' I = -1


.field private 'onViewClickResultCodes' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
aload 0
aconst_null
putfield com/nd/schoollife/ui/team/view/PopMenuActivity/onViewClickResultCodes Ljava/util/HashMap;
return
.limit locals 1
.limit stack 2
.end method

.method private finishSelf(I)V
aload 0
iload 1
invokevirtual com/nd/schoollife/ui/team/view/PopMenuActivity/setResult(I)V
aload 0
invokevirtual com/nd/schoollife/ui/team/view/PopMenuActivity/finish()V
return
.limit locals 2
.limit stack 2
.end method

.method public static getPopMenuIntent(Landroid/content/Context;I[I[II)Landroid/content/Intent;
new android/content/Intent
dup
aload 0
ldc com/nd/schoollife/ui/team/view/PopMenuActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 0
aload 0
ldc "layoutresid"
iload 1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 0
ldc "onclickcount"
iload 4
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
iconst_0
istore 1
L0:
iload 1
iload 4
if_icmpge L1
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "viewid"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 2
iload 1
iaload
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "result"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 3
iload 1
iaload
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
aload 0
areturn
.limit locals 5
.limit stack 4
.end method

.method private initData()V
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/nd/schoollife/ui/team/view/PopMenuActivity/onViewClickResultCodes Ljava/util/HashMap;
aload 0
invokevirtual com/nd/schoollife/ui/team/view/PopMenuActivity/getIntent()Landroid/content/Intent;
astore 5
aload 5
ldc "onclickcount"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
istore 2
iconst_0
istore 1
L0:
iload 1
iload 2
if_icmpge L1
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "viewid"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
istore 3
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "result"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
istore 4
aload 0
getfield com/nd/schoollife/ui/team/view/PopMenuActivity/onViewClickResultCodes Ljava/util/HashMap;
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
iload 4
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
return
.limit locals 6
.limit stack 3
.end method

.method private initEvent()V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
aload 0
invokevirtual com/nd/schoollife/ui/team/view/PopMenuActivity/getWindow()Landroid/view/Window;
invokevirtual android/view/Window/getDecorView()Landroid/view/View;
ldc_w 16908290
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
astore 1
aload 1
iconst_1
invokevirtual android/view/View/setFocusable(Z)V
aload 1
iconst_1
invokevirtual android/view/View/setClickable(Z)V
aload 1
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
L0:
aload 0
getfield com/nd/schoollife/ui/team/view/PopMenuActivity/onViewClickResultCodes Ljava/util/HashMap;
invokevirtual java/util/HashMap/entrySet()Ljava/util/Set;
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
invokevirtual com/nd/schoollife/ui/team/view/PopMenuActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
L3:
goto L1
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
L4:
return
.limit locals 2
.limit stack 2
.end method

.method private initView()V
aload 0
invokevirtual com/nd/schoollife/ui/team/view/PopMenuActivity/getIntent()Landroid/content/Intent;
ldc "layoutresid"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
istore 1
iload 1
ifeq L0
aload 0
iload 1
invokevirtual com/nd/schoollife/ui/team/view/PopMenuActivity/setContentView(I)V
aload 0
invokevirtual com/nd/schoollife/ui/team/view/PopMenuActivity/getWindow()Landroid/view/Window;
iconst_m1
iconst_m1
invokevirtual android/view/Window/setLayout(II)V
return
L0:
aload 0
new android/widget/LinearLayout
dup
aload 0
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
invokevirtual com/nd/schoollife/ui/team/view/PopMenuActivity/setContentView(Landroid/view/View;)V
return
.limit locals 2
.limit stack 4
.end method

.method public onClick(Landroid/view/View;)V
aload 1
aload 0
invokevirtual com/nd/schoollife/ui/team/view/PopMenuActivity/getWindow()Landroid/view/Window;
invokevirtual android/view/Window/getDecorView()Landroid/view/View;
ldc_w 16908290
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L0
aload 0
iconst_m1
invokespecial com/nd/schoollife/ui/team/view/PopMenuActivity/finishSelf(I)V
return
L0:
aload 0
aload 0
getfield com/nd/schoollife/ui/team/view/PopMenuActivity/onViewClickResultCodes Ljava/util/HashMap;
aload 1
invokevirtual android/view/View/getId()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
invokespecial com/nd/schoollife/ui/team/view/PopMenuActivity/finishSelf(I)V
return
.limit locals 2
.limit stack 3
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Activity/onCreate(Landroid/os/Bundle;)V
aload 0
invokespecial com/nd/schoollife/ui/team/view/PopMenuActivity/initData()V
aload 0
invokespecial com/nd/schoollife/ui/team/view/PopMenuActivity/initView()V
aload 0
invokespecial com/nd/schoollife/ui/team/view/PopMenuActivity/initEvent()V
return
.limit locals 2
.limit stack 2
.end method
