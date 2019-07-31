.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/view/widge/SelectClassView
.super android/widget/LinearLayout
.inner class inner com/nd/android/u/cloud/view/widge/SelectClassView$1
.inner class inner com/nd/android/u/cloud/view/widge/SelectClassView$2

.field private static final 'TAG' Ljava/lang/String; = "SelectClassView"

.field private static final 'maxnum' I = 19


.field private 'mcontext' Landroid/content/Context;

.field 'myCheckedListener' Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private 'myHandler' Landroid/os/Handler;

.field protected 'myonclicklistener' Landroid/view/View$OnClickListener;

.field private 'oapclass' Lcom/nd/android/u/contact/dataStructure/OapClass;

.field private 'section_name' Landroid/widget/TextView;

.field private 'section_radio' Landroid/widget/CheckBox;

.field private 'selectcontractlist' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/android/u/contact/dataStructure/OapClass;>;"

.field private 'userLayout' Landroid/widget/LinearLayout;

.method public <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;)V
.signature "(Landroid/content/Context;Ljava/util/ArrayList<Lcom/nd/android/u/contact/dataStructure/OapClass;>;Landroid/os/Handler;)V"
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
new com/nd/android/u/cloud/view/widge/SelectClassView$1
dup
aload 0
invokespecial com/nd/android/u/cloud/view/widge/SelectClassView$1/<init>(Lcom/nd/android/u/cloud/view/widge/SelectClassView;)V
putfield com/nd/android/u/cloud/view/widge/SelectClassView/myonclicklistener Landroid/view/View$OnClickListener;
aload 0
new com/nd/android/u/cloud/view/widge/SelectClassView$2
dup
aload 0
invokespecial com/nd/android/u/cloud/view/widge/SelectClassView$2/<init>(Lcom/nd/android/u/cloud/view/widge/SelectClassView;)V
putfield com/nd/android/u/cloud/view/widge/SelectClassView/myCheckedListener Landroid/widget/CompoundButton$OnCheckedChangeListener;
aload 0
aload 3
putfield com/nd/android/u/cloud/view/widge/SelectClassView/myHandler Landroid/os/Handler;
aload 0
aload 2
putfield com/nd/android/u/cloud/view/widge/SelectClassView/selectcontractlist Ljava/util/ArrayList;
aload 0
aload 1
putfield com/nd/android/u/cloud/view/widge/SelectClassView/mcontext Landroid/content/Context;
aload 0
invokevirtual com/nd/android/u/cloud/view/widge/SelectClassView/getView()V
return
.limit locals 4
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/view/widge/SelectClassView;)Landroid/widget/CheckBox;
aload 0
getfield com/nd/android/u/cloud/view/widge/SelectClassView/section_radio Landroid/widget/CheckBox;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/view/widge/SelectClassView;)Lcom/nd/android/u/contact/dataStructure/OapClass;
aload 0
getfield com/nd/android/u/cloud/view/widge/SelectClassView/oapclass Lcom/nd/android/u/contact/dataStructure/OapClass;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/cloud/view/widge/SelectClassView;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/cloud/view/widge/SelectClassView/selectcontractlist Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/cloud/view/widge/SelectClassView;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/cloud/view/widge/SelectClassView/myHandler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/cloud/view/widge/SelectClassView;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/cloud/view/widge/SelectClassView/mcontext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getView()V
aload 0
getfield com/nd/android/u/cloud/view/widge/SelectClassView/mcontext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
ldc_w 2130903697
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
aload 0
aload 0
ldc_w 2131626628
invokevirtual com/nd/android/u/cloud/view/widge/SelectClassView/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/cloud/view/widge/SelectClassView/userLayout Landroid/widget/LinearLayout;
aload 0
aload 0
ldc_w 2131626612
invokevirtual com/nd/android/u/cloud/view/widge/SelectClassView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/view/widge/SelectClassView/section_name Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131626629
invokevirtual com/nd/android/u/cloud/view/widge/SelectClassView/findViewById(I)Landroid/view/View;
checkcast android/widget/CheckBox
putfield com/nd/android/u/cloud/view/widge/SelectClassView/section_radio Landroid/widget/CheckBox;
aload 0
getfield com/nd/android/u/cloud/view/widge/SelectClassView/userLayout Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/cloud/view/widge/SelectClassView/myonclicklistener Landroid/view/View$OnClickListener;
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/view/widge/SelectClassView/section_radio Landroid/widget/CheckBox;
aload 0
getfield com/nd/android/u/cloud/view/widge/SelectClassView/myCheckedListener Landroid/widget/CompoundButton$OnCheckedChangeListener;
invokevirtual android/widget/CheckBox/setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method public initComponentValue(Lcom/nd/android/u/contact/dataStructure/OapClass;)V
aload 1
ifnull L0
aload 1
iconst_0
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/setChecked(Z)V
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getClassname()Ljava/lang/String;
astore 3
aload 0
getfield com/nd/android/u/cloud/view/widge/SelectClassView/selectcontractlist Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 4
L1:
aload 1
astore 2
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapClass
astore 2
aload 3
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getClassname()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 2
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/setChecked(Z)V
L2:
aload 0
aload 2
putfield com/nd/android/u/cloud/view/widge/SelectClassView/oapclass Lcom/nd/android/u/contact/dataStructure/OapClass;
aload 0
getfield com/nd/android/u/cloud/view/widge/SelectClassView/section_name Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/view/widge/SelectClassView/oapclass Lcom/nd/android/u/contact/dataStructure/OapClass;
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getClassname()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/isChecked()Z
ifeq L3
aload 0
getfield com/nd/android/u/cloud/view/widge/SelectClassView/section_radio Landroid/widget/CheckBox;
iconst_1
invokevirtual android/widget/CheckBox/setChecked(Z)V
L0:
return
L3:
aload 0
getfield com/nd/android/u/cloud/view/widge/SelectClassView/section_radio Landroid/widget/CheckBox;
iconst_0
invokevirtual android/widget/CheckBox/setChecked(Z)V
return
.limit locals 5
.limit stack 2
.end method
