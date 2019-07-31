.bytecode 50.0
.class public synchronized abstract com/common/android/ui/wheel/AbstractWheelAdapter
.super java/lang/Object
.implements com/common/android/ui/wheel/WheelViewAdapter

.field private 'datasetObservers' Ljava/util/List; signature "Ljava/util/List<Landroid/database/DataSetObserver;>;"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getEmptyItem(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aconst_null
areturn
.limit locals 3
.limit stack 1
.end method

.method protected notifyDataChangedEvent()V
aload 0
getfield com/common/android/ui/wheel/AbstractWheelAdapter/datasetObservers Ljava/util/List;
ifnull L0
aload 0
getfield com/common/android/ui/wheel/AbstractWheelAdapter/datasetObservers Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast android/database/DataSetObserver
invokevirtual android/database/DataSetObserver/onChanged()V
goto L1
L0:
return
.limit locals 2
.limit stack 1
.end method

.method protected notifyDataInvalidatedEvent()V
aload 0
getfield com/common/android/ui/wheel/AbstractWheelAdapter/datasetObservers Ljava/util/List;
ifnull L0
aload 0
getfield com/common/android/ui/wheel/AbstractWheelAdapter/datasetObservers Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast android/database/DataSetObserver
invokevirtual android/database/DataSetObserver/onInvalidated()V
goto L1
L0:
return
.limit locals 2
.limit stack 1
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
aload 0
getfield com/common/android/ui/wheel/AbstractWheelAdapter/datasetObservers Ljava/util/List;
ifnonnull L0
aload 0
new java/util/LinkedList
dup
invokespecial java/util/LinkedList/<init>()V
putfield com/common/android/ui/wheel/AbstractWheelAdapter/datasetObservers Ljava/util/List;
L0:
aload 0
getfield com/common/android/ui/wheel/AbstractWheelAdapter/datasetObservers Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 2
.limit stack 3
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
aload 0
getfield com/common/android/ui/wheel/AbstractWheelAdapter/datasetObservers Ljava/util/List;
ifnull L0
aload 0
getfield com/common/android/ui/wheel/AbstractWheelAdapter/datasetObservers Ljava/util/List;
aload 1
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
L0:
return
.limit locals 2
.limit stack 2
.end method
