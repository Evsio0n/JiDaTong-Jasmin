.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/ui/adapter/AppListViewAdapter
.super android/widget/BaseAdapter
.inner class inner com/nd/android/u/cloud/ui/adapter/AppListViewAdapter$1
.inner class private ViewHolder inner com/nd/android/u/cloud/ui/adapter/AppListViewAdapter$ViewHolder outer com/nd/android/u/cloud/ui/adapter/AppListViewAdapter

.field private 'adapter' Lcom/nd/android/u/cloud/ui/adapter/AppAdapter;

.field private 'appCategrays' Ljava/util/List; signature "Ljava/util/List<Ljava/lang/String;>;"

.field private 'context' Landroid/content/Context;

.field private 'gridView' Landroid/widget/GridView;

.field private 'list' Ljava/util/List; signature "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/product/android/commonInterface/contact/OapApp;>;>;>;"

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/adapter/AppListViewAdapter/context Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/ui/adapter/AppListViewAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/cloud/ui/adapter/AppListViewAdapter/context Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/cloud/ui/adapter/AppListViewAdapter/list Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/ui/adapter/AppListViewAdapter/list Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/cloud/ui/adapter/AppListViewAdapter/list Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/ui/adapter/AppListViewAdapter/list Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
areturn
L0:
aconst_null
areturn
.limit locals 2
.limit stack 2
.end method

.method public getItemId(I)J
iload 1
i2l
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getList()Ljava/util/List;
.signature "()Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/product/android/commonInterface/contact/OapApp;>;>;>;"
aload 0
getfield com/nd/android/u/cloud/ui/adapter/AppListViewAdapter/list Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
ifnull L0
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/cloud/ui/adapter/AppListViewAdapter$ViewHolder
astore 4
aload 2
astore 3
aload 4
astore 2
L1:
aload 0
getfield com/nd/android/u/cloud/ui/adapter/AppListViewAdapter/list Ljava/util/List;
ifnull L2
aload 2
getfield com/nd/android/u/cloud/ui/adapter/AppListViewAdapter$ViewHolder/appCategrey Landroid/widget/TextView;
ifnull L3
aload 2
getfield com/nd/android/u/cloud/ui/adapter/AppListViewAdapter$ViewHolder/appCategrey Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/ui/adapter/AppListViewAdapter/appCategrays Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast java/lang/CharSequence
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L3:
aload 2
getfield com/nd/android/u/cloud/ui/adapter/AppListViewAdapter$ViewHolder/gridView Lcom/nd/android/u/cloud/view/widge/NoScrollGridView;
ifnull L2
aload 0
getfield com/nd/android/u/cloud/ui/adapter/AppListViewAdapter/list Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast java/util/Map
aload 0
getfield com/nd/android/u/cloud/ui/adapter/AppListViewAdapter/appCategrays Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/util/List
astore 4
new com/nd/android/u/cloud/ui/adapter/AppAdapter
dup
aload 0
getfield com/nd/android/u/cloud/ui/adapter/AppListViewAdapter/context Landroid/content/Context;
invokespecial com/nd/android/u/cloud/ui/adapter/AppAdapter/<init>(Landroid/content/Context;)V
astore 5
aload 5
aload 4
invokevirtual com/nd/android/u/cloud/ui/adapter/AppAdapter/setAppList(Ljava/util/List;)V
aload 2
getfield com/nd/android/u/cloud/ui/adapter/AppListViewAdapter$ViewHolder/gridView Lcom/nd/android/u/cloud/view/widge/NoScrollGridView;
aload 5
invokevirtual com/nd/android/u/cloud/view/widge/NoScrollGridView/setAdapter(Landroid/widget/ListAdapter;)V
L2:
aload 0
aload 2
getfield com/nd/android/u/cloud/ui/adapter/AppListViewAdapter$ViewHolder/gridView Lcom/nd/android/u/cloud/view/widge/NoScrollGridView;
invokevirtual com/nd/android/u/cloud/ui/adapter/AppListViewAdapter/initEvent(Landroid/widget/GridView;)V
aload 3
areturn
L0:
new com/nd/android/u/cloud/ui/adapter/AppListViewAdapter$ViewHolder
dup
aload 0
aconst_null
invokespecial com/nd/android/u/cloud/ui/adapter/AppListViewAdapter$ViewHolder/<init>(Lcom/nd/android/u/cloud/ui/adapter/AppListViewAdapter;Lcom/nd/android/u/cloud/ui/adapter/AppListViewAdapter$1;)V
astore 2
aload 0
getfield com/nd/android/u/cloud/ui/adapter/AppListViewAdapter/context Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
ldc_w 2130903161
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 3
aload 2
aload 3
ldc_w 2131624575
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/ui/adapter/AppListViewAdapter$ViewHolder/appCategrey Landroid/widget/TextView;
aload 2
aload 3
ldc_w 2131624559
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/nd/android/u/cloud/view/widge/NoScrollGridView
putfield com/nd/android/u/cloud/ui/adapter/AppListViewAdapter$ViewHolder/gridView Lcom/nd/android/u/cloud/view/widge/NoScrollGridView;
aload 3
aload 2
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
goto L1
.limit locals 6
.limit stack 4
.end method

.method protected initEvent(Landroid/widget/GridView;)V
aload 1
new com/nd/android/u/cloud/ui/adapter/AppListViewAdapter$1
dup
aload 0
aload 1
invokespecial com/nd/android/u/cloud/ui/adapter/AppListViewAdapter$1/<init>(Lcom/nd/android/u/cloud/ui/adapter/AppListViewAdapter;Landroid/widget/GridView;)V
invokevirtual android/widget/GridView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
return
.limit locals 2
.limit stack 5
.end method

.method public setList(Ljava/util/List;)V
.signature "(Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/product/android/commonInterface/contact/OapApp;>;>;>;)V"
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/adapter/AppListViewAdapter/list Ljava/util/List;
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/size()I 0
ifle L0
aload 0
getfield com/nd/android/u/cloud/ui/adapter/AppListViewAdapter/appCategrays Ljava/util/List;
ifnonnull L1
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/cloud/ui/adapter/AppListViewAdapter/appCategrays Ljava/util/List;
L1:
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L2:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map
invokeinterface java/util/Map/entrySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 2
L3:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 3
aload 0
getfield com/nd/android/u/cloud/ui/adapter/AppListViewAdapter/appCategrays Ljava/util/List;
aload 3
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L3
L0:
return
.limit locals 4
.limit stack 3
.end method
