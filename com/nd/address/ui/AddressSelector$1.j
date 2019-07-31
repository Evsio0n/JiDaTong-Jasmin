.bytecode 50.0
.class synchronized com/nd/address/ui/AddressSelector$1
.super java/lang/Object
.implements android/widget/AdapterView$OnItemClickListener
.signature "Ljava/lang/Object;Landroid/widget/AdapterView$OnItemClickListener;"
.enclosing method com/nd/address/ui/AddressSelector/initEvent()V
.inner class inner com/nd/address/ui/AddressSelector$1

.field private static synthetic '$SWITCH_TABLE$com$nd$rj$common$administrativeregions$lib$Level' [I

.field final synthetic 'this$0' Lcom/nd/address/ui/AddressSelector;

.method static synthetic $SWITCH_TABLE$com$nd$rj$common$administrativeregions$lib$Level()[I
.catch java/lang/NoSuchFieldError from L0 to L1 using L2
.catch java/lang/NoSuchFieldError from L1 to L3 using L4
.catch java/lang/NoSuchFieldError from L3 to L5 using L6
.catch java/lang/NoSuchFieldError from L5 to L7 using L8
getstatic com/nd/address/ui/AddressSelector$1/$SWITCH_TABLE$com$nd$rj$common$administrativeregions$lib$Level [I
astore 0
aload 0
ifnull L9
aload 0
areturn
L9:
invokestatic com/nd/rj/common/administrativeregions/lib/Level/values()[Lcom/nd/rj/common/administrativeregions/lib/Level;
arraylength
newarray int
astore 0
L0:
aload 0
getstatic com/nd/rj/common/administrativeregions/lib/Level/INVALID Lcom/nd/rj/common/administrativeregions/lib/Level;
invokevirtual com/nd/rj/common/administrativeregions/lib/Level/ordinal()I
iconst_1
iastore
L1:
aload 0
getstatic com/nd/rj/common/administrativeregions/lib/Level/LEVEL_1 Lcom/nd/rj/common/administrativeregions/lib/Level;
invokevirtual com/nd/rj/common/administrativeregions/lib/Level/ordinal()I
iconst_2
iastore
L3:
aload 0
getstatic com/nd/rj/common/administrativeregions/lib/Level/LEVEL_2 Lcom/nd/rj/common/administrativeregions/lib/Level;
invokevirtual com/nd/rj/common/administrativeregions/lib/Level/ordinal()I
iconst_3
iastore
L5:
aload 0
getstatic com/nd/rj/common/administrativeregions/lib/Level/LEVEL_3 Lcom/nd/rj/common/administrativeregions/lib/Level;
invokevirtual com/nd/rj/common/administrativeregions/lib/Level/ordinal()I
iconst_4
iastore
L7:
aload 0
putstatic com/nd/address/ui/AddressSelector$1/$SWITCH_TABLE$com$nd$rj$common$administrativeregions$lib$Level [I
aload 0
areturn
L8:
astore 1
goto L7
L6:
astore 1
goto L5
L4:
astore 1
goto L3
L2:
astore 1
goto L1
.limit locals 2
.limit stack 3
.end method

.method <init>(Lcom/nd/address/ui/AddressSelector;)V
aload 0
aload 1
putfield com/nd/address/ui/AddressSelector$1/this$0 Lcom/nd/address/ui/AddressSelector;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
iload 3
iflt L0
iload 3
aload 0
getfield com/nd/address/ui/AddressSelector$1/this$0 Lcom/nd/address/ui/AddressSelector;
invokestatic com/nd/address/ui/AddressSelector/access$0(Lcom/nd/address/ui/AddressSelector;)Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpge L0
aload 0
getfield com/nd/address/ui/AddressSelector$1/this$0 Lcom/nd/address/ui/AddressSelector;
invokestatic com/nd/address/ui/AddressSelector/access$0(Lcom/nd/address/ui/AddressSelector;)Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifeq L1
L0:
return
L1:
aload 0
getfield com/nd/address/ui/AddressSelector$1/this$0 Lcom/nd/address/ui/AddressSelector;
invokestatic com/nd/address/ui/AddressSelector/access$0(Lcom/nd/address/ui/AddressSelector;)Ljava/util/List;
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/address/bean/Address
astore 1
aload 0
getfield com/nd/address/ui/AddressSelector$1/this$0 Lcom/nd/address/ui/AddressSelector;
aload 1
invokevirtual com/nd/address/bean/Address/getCode()Ljava/lang/String;
invokestatic com/nd/address/ui/AddressSelector/access$1(Lcom/nd/address/ui/AddressSelector;Ljava/lang/String;)V
aload 1
invokevirtual com/nd/address/bean/Address/isSelected()Z
istore 7
iload 7
ifeq L2
iconst_0
istore 6
L3:
aload 1
iload 6
invokevirtual com/nd/address/bean/Address/setSelected(Z)V
invokestatic com/nd/address/ui/AddressSelector$1/$SWITCH_TABLE$com$nd$rj$common$administrativeregions$lib$Level()[I
aload 1
invokevirtual com/nd/address/bean/Address/getLevel()Lcom/nd/rj/common/administrativeregions/lib/Level;
invokevirtual com/nd/rj/common/administrativeregions/lib/Level/ordinal()I
iaload
tableswitch 2
L4
L5
L6
default : L7
L7:
iload 7
ifeq L0
aload 0
getfield com/nd/address/ui/AddressSelector$1/this$0 Lcom/nd/address/ui/AddressSelector;
aconst_null
invokestatic com/nd/address/ui/AddressSelector/access$1(Lcom/nd/address/ui/AddressSelector;Ljava/lang/String;)V
return
L2:
iconst_1
istore 6
goto L3
L4:
aload 0
getfield com/nd/address/ui/AddressSelector$1/this$0 Lcom/nd/address/ui/AddressSelector;
getstatic com/nd/rj/common/administrativeregions/lib/Level/LEVEL_2 Lcom/nd/rj/common/administrativeregions/lib/Level;
invokestatic com/nd/address/ui/AddressSelector/access$2(Lcom/nd/address/ui/AddressSelector;Lcom/nd/rj/common/administrativeregions/lib/Level;)V
aload 0
getfield com/nd/address/ui/AddressSelector$1/this$0 Lcom/nd/address/ui/AddressSelector;
getstatic com/nd/rj/common/administrativeregions/lib/Level/LEVEL_3 Lcom/nd/rj/common/administrativeregions/lib/Level;
invokestatic com/nd/address/ui/AddressSelector/access$2(Lcom/nd/address/ui/AddressSelector;Lcom/nd/rj/common/administrativeregions/lib/Level;)V
aload 0
getfield com/nd/address/ui/AddressSelector$1/this$0 Lcom/nd/address/ui/AddressSelector;
aload 0
getfield com/nd/address/ui/AddressSelector$1/this$0 Lcom/nd/address/ui/AddressSelector;
invokestatic com/nd/address/ui/AddressSelector/access$3(Lcom/nd/address/ui/AddressSelector;)Ljava/lang/String;
getstatic com/nd/rj/common/administrativeregions/lib/Level/LEVEL_1 Lcom/nd/rj/common/administrativeregions/lib/Level;
invokestatic com/nd/address/ui/AddressSelector/access$4(Lcom/nd/address/ui/AddressSelector;Ljava/lang/String;Lcom/nd/rj/common/administrativeregions/lib/Level;)V
iload 7
ifne L8
aload 0
getfield com/nd/address/ui/AddressSelector$1/this$0 Lcom/nd/address/ui/AddressSelector;
aload 0
getfield com/nd/address/ui/AddressSelector$1/this$0 Lcom/nd/address/ui/AddressSelector;
invokestatic com/nd/address/ui/AddressSelector/access$3(Lcom/nd/address/ui/AddressSelector;)Ljava/lang/String;
invokestatic com/nd/address/ui/AddressSelector/access$5(Lcom/nd/address/ui/AddressSelector;Ljava/lang/String;)I
pop
goto L7
L8:
aload 0
getfield com/nd/address/ui/AddressSelector$1/this$0 Lcom/nd/address/ui/AddressSelector;
invokestatic com/nd/address/ui/AddressSelector/access$6(Lcom/nd/address/ui/AddressSelector;)Lcom/nd/address/ui/TreeViewAdapter;
invokevirtual com/nd/address/ui/TreeViewAdapter/notifyDataSetChanged()V
goto L7
L5:
aload 0
getfield com/nd/address/ui/AddressSelector$1/this$0 Lcom/nd/address/ui/AddressSelector;
getstatic com/nd/rj/common/administrativeregions/lib/Level/LEVEL_3 Lcom/nd/rj/common/administrativeregions/lib/Level;
invokestatic com/nd/address/ui/AddressSelector/access$2(Lcom/nd/address/ui/AddressSelector;Lcom/nd/rj/common/administrativeregions/lib/Level;)V
aload 0
getfield com/nd/address/ui/AddressSelector$1/this$0 Lcom/nd/address/ui/AddressSelector;
aload 0
getfield com/nd/address/ui/AddressSelector$1/this$0 Lcom/nd/address/ui/AddressSelector;
invokestatic com/nd/address/ui/AddressSelector/access$3(Lcom/nd/address/ui/AddressSelector;)Ljava/lang/String;
getstatic com/nd/rj/common/administrativeregions/lib/Level/LEVEL_2 Lcom/nd/rj/common/administrativeregions/lib/Level;
invokestatic com/nd/address/ui/AddressSelector/access$4(Lcom/nd/address/ui/AddressSelector;Ljava/lang/String;Lcom/nd/rj/common/administrativeregions/lib/Level;)V
iload 7
ifne L9
aload 0
getfield com/nd/address/ui/AddressSelector$1/this$0 Lcom/nd/address/ui/AddressSelector;
aload 0
getfield com/nd/address/ui/AddressSelector$1/this$0 Lcom/nd/address/ui/AddressSelector;
invokestatic com/nd/address/ui/AddressSelector/access$3(Lcom/nd/address/ui/AddressSelector;)Ljava/lang/String;
invokestatic com/nd/address/ui/AddressSelector/access$5(Lcom/nd/address/ui/AddressSelector;Ljava/lang/String;)I
pop
goto L7
L9:
aload 0
getfield com/nd/address/ui/AddressSelector$1/this$0 Lcom/nd/address/ui/AddressSelector;
invokestatic com/nd/address/ui/AddressSelector/access$6(Lcom/nd/address/ui/AddressSelector;)Lcom/nd/address/ui/TreeViewAdapter;
invokevirtual com/nd/address/ui/TreeViewAdapter/notifyDataSetChanged()V
goto L7
L6:
aload 0
getfield com/nd/address/ui/AddressSelector$1/this$0 Lcom/nd/address/ui/AddressSelector;
aload 0
getfield com/nd/address/ui/AddressSelector$1/this$0 Lcom/nd/address/ui/AddressSelector;
invokestatic com/nd/address/ui/AddressSelector/access$3(Lcom/nd/address/ui/AddressSelector;)Ljava/lang/String;
getstatic com/nd/rj/common/administrativeregions/lib/Level/LEVEL_3 Lcom/nd/rj/common/administrativeregions/lib/Level;
invokestatic com/nd/address/ui/AddressSelector/access$4(Lcom/nd/address/ui/AddressSelector;Ljava/lang/String;Lcom/nd/rj/common/administrativeregions/lib/Level;)V
aload 0
getfield com/nd/address/ui/AddressSelector$1/this$0 Lcom/nd/address/ui/AddressSelector;
invokestatic com/nd/address/ui/AddressSelector/access$6(Lcom/nd/address/ui/AddressSelector;)Lcom/nd/address/ui/TreeViewAdapter;
invokevirtual com/nd/address/ui/TreeViewAdapter/notifyDataSetChanged()V
goto L7
.limit locals 8
.limit stack 3
.end method
