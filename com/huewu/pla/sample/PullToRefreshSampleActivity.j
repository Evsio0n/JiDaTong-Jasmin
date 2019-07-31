.bytecode 50.0
.class public synchronized com/huewu/pla/sample/PullToRefreshSampleActivity
.super android/app/Activity
.inner class private MySimpleAdapter inner com/huewu/pla/sample/PullToRefreshSampleActivity$MySimpleAdapter outer com/huewu/pla/sample/PullToRefreshSampleActivity

.field private 'mAdapter' Lcom/huewu/pla/sample/PullToRefreshSampleActivity$MySimpleAdapter;

.field private 'mAdapterView' Lcom/huewu/pla/lib/internal/PLA_AdapterView; signature "Lcom/huewu/pla/lib/internal/PLA_AdapterView<Landroid/widget/ListAdapter;>;"

.field private 'mRand' Ljava/util/Random;

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
aload 0
aconst_null
putfield com/huewu/pla/sample/PullToRefreshSampleActivity/mAdapterView Lcom/huewu/pla/lib/internal/PLA_AdapterView;
aload 0
aconst_null
putfield com/huewu/pla/sample/PullToRefreshSampleActivity/mAdapter Lcom/huewu/pla/sample/PullToRefreshSampleActivity$MySimpleAdapter;
aload 0
new java/util/Random
dup
invokespecial java/util/Random/<init>()V
putfield com/huewu/pla/sample/PullToRefreshSampleActivity/mRand Ljava/util/Random;
return
.limit locals 1
.limit stack 3
.end method

.method private initAdapter()V
aload 0
new com/huewu/pla/sample/PullToRefreshSampleActivity$MySimpleAdapter
dup
aload 0
aload 0
getstatic com/huewu/pla/R$layout/sample_item I
invokespecial com/huewu/pla/sample/PullToRefreshSampleActivity$MySimpleAdapter/<init>(Lcom/huewu/pla/sample/PullToRefreshSampleActivity;Landroid/content/Context;I)V
putfield com/huewu/pla/sample/PullToRefreshSampleActivity/mAdapter Lcom/huewu/pla/sample/PullToRefreshSampleActivity$MySimpleAdapter;
iconst_0
istore 1
L0:
iload 1
bipush 30
if_icmplt L1
return
L1:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 2
aload 2
ldc "Hello!!["
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
aload 2
ldc "] "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
getfield com/huewu/pla/sample/PullToRefreshSampleActivity/mRand Ljava/util/Random;
sipush 500
invokevirtual java/util/Random/nextInt(I)I
newarray char
astore 3
aload 3
bipush 49
invokestatic java/util/Arrays/fill([CC)V
aload 2
aload 3
invokevirtual java/lang/StringBuilder/append([C)Ljava/lang/StringBuilder;
pop
aload 0
getfield com/huewu/pla/sample/PullToRefreshSampleActivity/mAdapter Lcom/huewu/pla/sample/PullToRefreshSampleActivity$MySimpleAdapter;
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/huewu/pla/sample/PullToRefreshSampleActivity$MySimpleAdapter/add(Ljava/lang/Object;)V
iload 1
iconst_1
iadd
istore 1
goto L0
.limit locals 4
.limit stack 6
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Activity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/huewu/pla/R$layout/sample_pull_to_refresh_act I
invokevirtual com/huewu/pla/sample/PullToRefreshSampleActivity/setContentView(I)V
aload 0
aload 0
getstatic com/huewu/pla/R$id/list I
invokevirtual com/huewu/pla/sample/PullToRefreshSampleActivity/findViewById(I)Landroid/view/View;
checkcast com/huewu/pla/lib/internal/PLA_AdapterView
putfield com/huewu/pla/sample/PullToRefreshSampleActivity/mAdapterView Lcom/huewu/pla/lib/internal/PLA_AdapterView;
return
.limit locals 2
.limit stack 3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
aload 1
iconst_0
sipush 1001
iconst_0
ldc "Load More Contents"
invokeinterface android/view/Menu/add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem; 4
pop
aload 0
aload 1
invokespecial android/app/Activity/onCreateOptionsMenu(Landroid/view/Menu;)Z
ireturn
.limit locals 2
.limit stack 5
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
aload 1
invokeinterface android/view/MenuItem/getItemId()I 0
tableswitch 1001
L0
L1
default : L2
L2:
iconst_1
ireturn
L0:
aload 0
getfield com/huewu/pla/sample/PullToRefreshSampleActivity/mAdapter Lcom/huewu/pla/sample/PullToRefreshSampleActivity$MySimpleAdapter;
invokevirtual com/huewu/pla/sample/PullToRefreshSampleActivity$MySimpleAdapter/getCount()I
istore 3
iconst_0
istore 2
L3:
iload 2
bipush 100
if_icmpge L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 1
aload 1
ldc "Hello!!["
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
iload 3
iload 2
iadd
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
aload 1
ldc "] "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
getfield com/huewu/pla/sample/PullToRefreshSampleActivity/mRand Ljava/util/Random;
bipush 100
invokevirtual java/util/Random/nextInt(I)I
newarray char
astore 4
aload 4
bipush 49
invokestatic java/util/Arrays/fill([CC)V
aload 1
aload 4
invokevirtual java/lang/StringBuilder/append([C)Ljava/lang/StringBuilder;
pop
aload 0
getfield com/huewu/pla/sample/PullToRefreshSampleActivity/mAdapter Lcom/huewu/pla/sample/PullToRefreshSampleActivity$MySimpleAdapter;
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/huewu/pla/sample/PullToRefreshSampleActivity$MySimpleAdapter/add(Ljava/lang/Object;)V
iload 2
iconst_1
iadd
istore 2
goto L3
L1:
aload 0
new android/content/Intent
dup
aload 0
ldc com/huewu/pla/sample/PullToRefreshSampleActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual com/huewu/pla/sample/PullToRefreshSampleActivity/startActivity(Landroid/content/Intent;)V
goto L2
.limit locals 5
.limit stack 5
.end method

.method protected onResume()V
aload 0
invokespecial android/app/Activity/onResume()V
aload 0
invokespecial com/huewu/pla/sample/PullToRefreshSampleActivity/initAdapter()V
aload 0
getfield com/huewu/pla/sample/PullToRefreshSampleActivity/mAdapterView Lcom/huewu/pla/lib/internal/PLA_AdapterView;
aload 0
getfield com/huewu/pla/sample/PullToRefreshSampleActivity/mAdapter Lcom/huewu/pla/sample/PullToRefreshSampleActivity$MySimpleAdapter;
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/setAdapter(Landroid/widget/Adapter;)V
return
.limit locals 1
.limit stack 2
.end method
