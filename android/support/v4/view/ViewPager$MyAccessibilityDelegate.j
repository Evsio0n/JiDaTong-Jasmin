.bytecode 50.0
.class synchronized android/support/v4/view/ViewPager$MyAccessibilityDelegate
.super android/support/v4/view/AccessibilityDelegateCompat
.inner class MyAccessibilityDelegate inner android/support/v4/view/ViewPager$MyAccessibilityDelegate outer android/support/v4/view/ViewPager

.field final synthetic 'this$0' Landroid/support/v4/view/ViewPager;

.method <init>(Landroid/support/v4/view/ViewPager;)V
aload 0
aload 1
putfield android/support/v4/view/ViewPager$MyAccessibilityDelegate/this$0 Landroid/support/v4/view/ViewPager;
aload 0
invokespecial android/support/v4/view/AccessibilityDelegateCompat/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
aload 0
aload 1
aload 2
invokespecial android/support/v4/view/AccessibilityDelegateCompat/onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
aload 2
ldc android/support/v4/view/ViewPager
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokevirtual android/view/accessibility/AccessibilityEvent/setClassName(Ljava/lang/CharSequence;)V
return
.limit locals 3
.limit stack 3
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
iconst_1
istore 3
aload 0
aload 1
aload 2
invokespecial android/support/v4/view/AccessibilityDelegateCompat/onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
aload 2
ldc android/support/v4/view/ViewPager
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokevirtual android/support/v4/view/accessibility/AccessibilityNodeInfoCompat/setClassName(Ljava/lang/CharSequence;)V
aload 0
getfield android/support/v4/view/ViewPager$MyAccessibilityDelegate/this$0 Landroid/support/v4/view/ViewPager;
invokestatic android/support/v4/view/ViewPager/access$200(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/PagerAdapter;
ifnull L0
aload 0
getfield android/support/v4/view/ViewPager$MyAccessibilityDelegate/this$0 Landroid/support/v4/view/ViewPager;
invokestatic android/support/v4/view/ViewPager/access$200(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/PagerAdapter;
invokevirtual android/support/v4/view/PagerAdapter/getCount()I
iconst_1
if_icmple L0
L1:
aload 2
iload 3
invokevirtual android/support/v4/view/accessibility/AccessibilityNodeInfoCompat/setScrollable(Z)V
aload 0
getfield android/support/v4/view/ViewPager$MyAccessibilityDelegate/this$0 Landroid/support/v4/view/ViewPager;
invokestatic android/support/v4/view/ViewPager/access$200(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/PagerAdapter;
ifnull L2
aload 0
getfield android/support/v4/view/ViewPager$MyAccessibilityDelegate/this$0 Landroid/support/v4/view/ViewPager;
invokestatic android/support/v4/view/ViewPager/access$300(Landroid/support/v4/view/ViewPager;)I
iflt L2
aload 0
getfield android/support/v4/view/ViewPager$MyAccessibilityDelegate/this$0 Landroid/support/v4/view/ViewPager;
invokestatic android/support/v4/view/ViewPager/access$300(Landroid/support/v4/view/ViewPager;)I
aload 0
getfield android/support/v4/view/ViewPager$MyAccessibilityDelegate/this$0 Landroid/support/v4/view/ViewPager;
invokestatic android/support/v4/view/ViewPager/access$200(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/PagerAdapter;
invokevirtual android/support/v4/view/PagerAdapter/getCount()I
iconst_1
isub
if_icmpge L2
aload 2
sipush 4096
invokevirtual android/support/v4/view/accessibility/AccessibilityNodeInfoCompat/addAction(I)V
L2:
aload 0
getfield android/support/v4/view/ViewPager$MyAccessibilityDelegate/this$0 Landroid/support/v4/view/ViewPager;
invokestatic android/support/v4/view/ViewPager/access$200(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/PagerAdapter;
ifnull L3
aload 0
getfield android/support/v4/view/ViewPager$MyAccessibilityDelegate/this$0 Landroid/support/v4/view/ViewPager;
invokestatic android/support/v4/view/ViewPager/access$300(Landroid/support/v4/view/ViewPager;)I
ifle L3
aload 0
getfield android/support/v4/view/ViewPager$MyAccessibilityDelegate/this$0 Landroid/support/v4/view/ViewPager;
invokestatic android/support/v4/view/ViewPager/access$300(Landroid/support/v4/view/ViewPager;)I
aload 0
getfield android/support/v4/view/ViewPager$MyAccessibilityDelegate/this$0 Landroid/support/v4/view/ViewPager;
invokestatic android/support/v4/view/ViewPager/access$200(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/PagerAdapter;
invokevirtual android/support/v4/view/PagerAdapter/getCount()I
if_icmpge L3
aload 2
sipush 8192
invokevirtual android/support/v4/view/accessibility/AccessibilityNodeInfoCompat/addAction(I)V
L3:
return
L0:
iconst_0
istore 3
goto L1
.limit locals 4
.limit stack 3
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
aload 0
aload 1
iload 2
aload 3
invokespecial android/support/v4/view/AccessibilityDelegateCompat/performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
ifeq L0
iconst_1
ireturn
L0:
iload 2
lookupswitch
4096 : L1
8192 : L2
default : L3
L3:
iconst_0
ireturn
L1:
aload 0
getfield android/support/v4/view/ViewPager$MyAccessibilityDelegate/this$0 Landroid/support/v4/view/ViewPager;
invokestatic android/support/v4/view/ViewPager/access$200(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/PagerAdapter;
ifnull L4
aload 0
getfield android/support/v4/view/ViewPager$MyAccessibilityDelegate/this$0 Landroid/support/v4/view/ViewPager;
invokestatic android/support/v4/view/ViewPager/access$300(Landroid/support/v4/view/ViewPager;)I
iflt L4
aload 0
getfield android/support/v4/view/ViewPager$MyAccessibilityDelegate/this$0 Landroid/support/v4/view/ViewPager;
invokestatic android/support/v4/view/ViewPager/access$300(Landroid/support/v4/view/ViewPager;)I
aload 0
getfield android/support/v4/view/ViewPager$MyAccessibilityDelegate/this$0 Landroid/support/v4/view/ViewPager;
invokestatic android/support/v4/view/ViewPager/access$200(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/PagerAdapter;
invokevirtual android/support/v4/view/PagerAdapter/getCount()I
iconst_1
isub
if_icmpge L4
aload 0
getfield android/support/v4/view/ViewPager$MyAccessibilityDelegate/this$0 Landroid/support/v4/view/ViewPager;
aload 0
getfield android/support/v4/view/ViewPager$MyAccessibilityDelegate/this$0 Landroid/support/v4/view/ViewPager;
invokestatic android/support/v4/view/ViewPager/access$300(Landroid/support/v4/view/ViewPager;)I
iconst_1
iadd
invokevirtual android/support/v4/view/ViewPager/setCurrentItem(I)V
iconst_1
ireturn
L4:
iconst_0
ireturn
L2:
aload 0
getfield android/support/v4/view/ViewPager$MyAccessibilityDelegate/this$0 Landroid/support/v4/view/ViewPager;
invokestatic android/support/v4/view/ViewPager/access$200(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/PagerAdapter;
ifnull L5
aload 0
getfield android/support/v4/view/ViewPager$MyAccessibilityDelegate/this$0 Landroid/support/v4/view/ViewPager;
invokestatic android/support/v4/view/ViewPager/access$300(Landroid/support/v4/view/ViewPager;)I
ifle L5
aload 0
getfield android/support/v4/view/ViewPager$MyAccessibilityDelegate/this$0 Landroid/support/v4/view/ViewPager;
invokestatic android/support/v4/view/ViewPager/access$300(Landroid/support/v4/view/ViewPager;)I
aload 0
getfield android/support/v4/view/ViewPager$MyAccessibilityDelegate/this$0 Landroid/support/v4/view/ViewPager;
invokestatic android/support/v4/view/ViewPager/access$200(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/PagerAdapter;
invokevirtual android/support/v4/view/PagerAdapter/getCount()I
if_icmpge L5
aload 0
getfield android/support/v4/view/ViewPager$MyAccessibilityDelegate/this$0 Landroid/support/v4/view/ViewPager;
aload 0
getfield android/support/v4/view/ViewPager$MyAccessibilityDelegate/this$0 Landroid/support/v4/view/ViewPager;
invokestatic android/support/v4/view/ViewPager/access$300(Landroid/support/v4/view/ViewPager;)I
iconst_1
isub
invokevirtual android/support/v4/view/ViewPager/setCurrentItem(I)V
iconst_1
ireturn
L5:
iconst_0
ireturn
.limit locals 4
.limit stack 4
.end method
