.class public Lorg/apache/commons/lang3/exception/ExceptionUtils;
.super Ljava/lang/Object;
.source "ExceptionUtils.java"


# static fields
.field private static final CAUSE_METHOD_NAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "getCause"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "getNextException"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "getTargetException"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "getException"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "getSourceException"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "getRootCause"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "getCausedByException"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "getNested"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "getLinkedException"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "getNestedException"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "getLinkedCause"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "getThrowable"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/lang3/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public static getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 124
    sget-object v0, Lorg/apache/commons/lang3/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->getCause(Ljava/lang/Throwable;[Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public static getCause(Ljava/lang/Throwable;[Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 6
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "methodNames"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 142
    if-nez p0, :cond_1

    move-object v1, v5

    .line 159
    :cond_0
    :goto_0
    return-object v1

    .line 146
    :cond_1
    if-nez p1, :cond_2

    .line 147
    sget-object p1, Lorg/apache/commons/lang3/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    .line 150
    :cond_2
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v4, v0, v2

    .line 151
    .local v4, "methodName":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 152
    invoke-static {p0, v4}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->getCauseUsingMethodName(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    .line 153
    .local v1, "cause":Ljava/lang/Throwable;
    if-nez v1, :cond_0

    .line 150
    .end local v1    # "cause":Ljava/lang/Throwable;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v4    # "methodName":Ljava/lang/String;
    :cond_4
    move-object v1, v5

    .line 159
    goto :goto_0
.end method

.method private static getCauseUsingMethodName(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 195
    .local v0, "method":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 202
    :goto_0
    if-eqz v0, :cond_0

    const-class v1, Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    const/4 v1, 0x0

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    .line 213
    :goto_1
    return-object v1

    .line 209
    :catch_0
    move-exception v1

    .line 213
    :cond_0
    :goto_2
    const/4 v1, 0x0

    goto :goto_1

    .line 207
    :catch_1
    move-exception v1

    goto :goto_2

    .line 205
    :catch_2
    move-exception v1

    goto :goto_2

    .line 198
    :catch_3
    move-exception v1

    goto :goto_0

    .line 196
    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method public static getRootCauseStackTrace(Ljava/lang/Throwable;)[Ljava/lang/String;
    .locals 9
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 517
    if-nez p0, :cond_0

    .line 518
    sget-object v7, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 539
    :goto_0
    return-object v7

    .line 520
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->getThrowables(Ljava/lang/Throwable;)[Ljava/lang/Throwable;

    move-result-object v5

    .line 521
    .local v5, "throwables":[Ljava/lang/Throwable;
    array-length v0, v5

    .line 522
    .local v0, "count":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 523
    .local v1, "frames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    add-int/lit8 v7, v0, -0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->getStackFrameList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v4

    .line 524
    .local v4, "nextTrace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v2, v0

    .local v2, "i":I
    :cond_1
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_4

    .line 525
    move-object v6, v4

    .line 526
    .local v6, "trace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    .line 527
    add-int/lit8 v7, v2, -0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->getStackFrameList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v4

    .line 528
    invoke-static {v6, v4}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->removeCommonFrames(Ljava/util/List;Ljava/util/List;)V

    .line 530
    :cond_2
    add-int/lit8 v7, v0, -0x1

    if-ne v2, v7, :cond_3

    .line 531
    aget-object v7, v5, v2

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    :goto_1
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 536
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 533
    .end local v3    # "j":I
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " [wrapped] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v5, v2

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 539
    .end local v6    # "trace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    goto :goto_0
.end method

.method static getStackFrameList(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 8
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 641
    invoke-static {p0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    .line 642
    .local v4, "stackTrace":Ljava/lang/String;
    sget-object v2, Lorg/apache/commons/lang3/SystemUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 643
    .local v2, "linebreak":Ljava/lang/String;
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, v4, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    .local v1, "frames":Ljava/util/StringTokenizer;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 645
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 646
    .local v6, "traceStarted":Z
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 647
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 649
    .local v5, "token":Ljava/lang/String;
    const-string/jumbo v7, "at"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 650
    .local v0, "at":I
    const/4 v7, -0x1

    if-eq v0, v7, :cond_1

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 651
    const/4 v6, 0x1

    .line 652
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 653
    :cond_1
    if-eqz v6, :cond_0

    .line 657
    .end local v0    # "at":I
    .end local v5    # "token":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method public static getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 583
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 584
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 585
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 586
    invoke-virtual {v1}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getThrowableList(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 2
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :goto_0
    if-eqz p0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 283
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-static {p0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    .line 286
    :cond_0
    return-object v0
.end method

.method public static getThrowables(Ljava/lang/Throwable;)[Ljava/lang/Throwable;
    .locals 2
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 257
    invoke-static {p0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->getThrowableList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v0

    .line 258
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Throwable;

    return-object v1
.end method

.method public static printRootCauseStackTrace(Ljava/lang/Throwable;Ljava/io/PrintStream;)V
    .locals 7
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "stream"    # Ljava/io/PrintStream;

    .prologue
    .line 456
    if-nez p0, :cond_0

    .line 467
    :goto_0
    return-void

    .line 459
    :cond_0
    if-nez p1, :cond_1

    .line 460
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "The PrintStream must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 462
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->getRootCauseStackTrace(Ljava/lang/Throwable;)[Ljava/lang/String;

    move-result-object v4

    .line 463
    .local v4, "trace":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 464
    .local v1, "element":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 463
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 466
    .end local v1    # "element":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    goto :goto_0
.end method

.method public static removeCommonFrames(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 551
    .local p0, "causeFrames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "wrapperFrames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 552
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "The List must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 554
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 555
    .local v1, "causeFrameIndex":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 556
    .local v3, "wrapperFrameIndex":I
    :goto_0
    if-ltz v1, :cond_3

    if-ltz v3, :cond_3

    .line 559
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 560
    .local v0, "causeFrame":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 561
    .local v2, "wrapperFrame":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 562
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 564
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 565
    add-int/lit8 v3, v3, -0x1

    .line 566
    goto :goto_0

    .line 567
    .end local v0    # "causeFrame":Ljava/lang/String;
    .end local v2    # "wrapperFrame":Ljava/lang/String;
    :cond_3
    return-void
.end method
