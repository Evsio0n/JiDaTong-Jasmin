.bytecode 50.0
.class synchronized com/nostra13/universalimageloader/core/assist/MemoryCacheUtil$1
.super java/lang/Object
.implements java/util/Comparator
.signature "Ljava/lang/Object;Ljava/util/Comparator<Ljava/lang/String;>;"
.enclosing method com/nostra13/universalimageloader/core/assist/MemoryCacheUtil/createFuzzyKeyComparator()Ljava/util/Comparator;
.inner class inner com/nostra13/universalimageloader/core/assist/MemoryCacheUtil$1

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public volatile synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
aload 0
aload 1
checkcast java/lang/String
aload 2
checkcast java/lang/String
invokevirtual com/nostra13/universalimageloader/core/assist/MemoryCacheUtil$1/compare(Ljava/lang/String;Ljava/lang/String;)I
ireturn
.limit locals 3
.limit stack 3
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
aload 1
iconst_0
aload 1
ldc "_"
invokevirtual java/lang/String/lastIndexOf(Ljava/lang/String;)I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
aload 2
iconst_0
aload 2
ldc "_"
invokevirtual java/lang/String/lastIndexOf(Ljava/lang/String;)I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/String/compareTo(Ljava/lang/String;)I
ireturn
.limit locals 3
.limit stack 5
.end method
