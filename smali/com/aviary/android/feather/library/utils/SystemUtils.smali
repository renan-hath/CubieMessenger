.class public Lcom/aviary/android/feather/library/utils/SystemUtils;
.super Ljava/lang/Object;
.source "SystemUtils.java"


# static fields
.field private static mCpuKiloHz:I

.field private static mMaxMemory:D

.field private static mValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    const/4 v0, 0x0

    sput v0, Lcom/aviary/android/feather/library/utils/SystemUtils;->mCpuKiloHz:I

    .line 62
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    sput-wide v0, Lcom/aviary/android/feather/library/utils/SystemUtils;->mMaxMemory:D

    return-void
.end method

.method public static getApplicationTotalMemory()D
    .locals 5

    .prologue
    .line 261
    sget-wide v1, Lcom/aviary/android/feather/library/utils/SystemUtils;->mMaxMemory:D

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    .line 262
    const/4 v1, 0x3

    new-array v0, v1, [D

    .line 263
    .local v0, "mem":[D
    invoke-static {v0}, Lcom/aviary/android/feather/library/utils/SystemUtils;->getRuntimeMemoryInfo([D)V

    .line 264
    const/4 v1, 0x2

    aget-wide v1, v0, v1

    sput-wide v1, Lcom/aviary/android/feather/library/utils/SystemUtils;->mMaxMemory:D

    .line 266
    :cond_0
    sget-wide v1, Lcom/aviary/android/feather/library/utils/SystemUtils;->mMaxMemory:D

    return-wide v1
.end method

.method public static getCpuFrequencyMax()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 203
    sget v0, Lcom/aviary/android/feather/library/utils/SystemUtils;->mCpuKiloHz:I

    if-nez v0, :cond_0

    .line 204
    const-string/jumbo v0, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-static {v0}, Lcom/aviary/android/feather/headless/utils/IOUtils;->readSystemFileAsInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/aviary/android/feather/library/utils/SystemUtils;->mCpuKiloHz:I

    .line 205
    :cond_0
    sget v0, Lcom/aviary/android/feather/library/utils/SystemUtils;->mCpuKiloHz:I

    return v0
.end method

.method public static getCpuMhz()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 213
    const/4 v1, 0x0

    .line 215
    .local v1, "kiloHZ":I
    :try_start_0
    invoke-static {}, Lcom/aviary/android/feather/library/utils/SystemUtils;->getCpuFrequencyMax()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 220
    if-lez v1, :cond_0

    .line 221
    div-int/lit16 v2, v1, 0x3e8

    .line 222
    :cond_0
    :goto_0
    return v2

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getCpuSpeed()F
    .locals 6

    .prologue
    const/high16 v4, -0x40800000    # -1.0f

    .line 118
    sget-object v5, Lcom/aviary/android/feather/library/utils/SystemUtils;->mValues:Ljava/util/HashMap;

    if-nez v5, :cond_0

    invoke-static {}, Lcom/aviary/android/feather/library/utils/SystemUtils;->init()V

    .line 120
    :cond_0
    const-string/jumbo v5, "BogoMIPS"

    invoke-static {v5}, Lcom/aviary/android/feather/library/utils/SystemUtils;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 124
    :try_start_0
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 125
    .local v1, "speed":D
    double-to-float v4, v1

    .line 130
    .end local v1    # "speed":D
    :cond_1
    :goto_0
    return v4

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getRuntimeMemoryInfo([D)V
    .locals 10
    .param p0, "outValues"    # [D

    .prologue
    const-wide/high16 v8, 0x4130000000000000L    # 1048576.0

    .line 251
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v6

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    div-double v4, v6, v8

    .line 252
    .local v4, "used":D
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v6

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    div-double v2, v6, v8

    .line 253
    .local v2, "total":D
    sub-double v0, v2, v4

    .line 255
    .local v0, "free":D
    const/4 v6, 0x0

    aput-wide v0, p0, v6

    .line 256
    const/4 v6, 0x1

    aput-wide v4, p0, v6

    .line 257
    const/4 v6, 0x2

    aput-wide v2, p0, v6

    .line 258
    return-void
.end method

.method private static getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 107
    sget-object v0, Lcom/aviary/android/feather/library/utils/SystemUtils;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static init()V
    .locals 10

    .prologue
    .line 67
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    sput-object v8, Lcom/aviary/android/feather/library/utils/SystemUtils;->mValues:Ljava/util/HashMap;

    .line 70
    const/4 v8, 0x2

    :try_start_0
    new-array v0, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "/system/bin/cat"

    aput-object v9, v0, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "/proc/cpuinfo"

    aput-object v9, v0, v8

    .line 71
    .local v0, "args":[Ljava/lang/String;
    new-instance v1, Ljava/lang/ProcessBuilder;

    invoke-direct {v1, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 73
    .local v1, "cmd":Ljava/lang/ProcessBuilder;
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v6

    .line 74
    .local v6, "process":Ljava/lang/Process;
    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 75
    .local v4, "in":Ljava/io/InputStream;
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 76
    .local v2, "converter":Ljava/io/InputStreamReader;
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 79
    .local v7, "reader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 82
    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V

    .line 83
    invoke-static {v4}, Lcom/aviary/android/feather/headless/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 87
    .end local v1    # "cmd":Ljava/lang/ProcessBuilder;
    .end local v2    # "converter":Ljava/io/InputStreamReader;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "process":Ljava/lang/Process;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    :goto_1
    return-void

    .line 80
    .restart local v1    # "cmd":Ljava/lang/ProcessBuilder;
    .restart local v2    # "converter":Ljava/io/InputStreamReader;
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "process":Ljava/lang/Process;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :cond_0
    invoke-static {v5}, Lcom/aviary/android/feather/library/utils/SystemUtils;->parseLine(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    .end local v1    # "cmd":Ljava/lang/ProcessBuilder;
    .end local v2    # "converter":Ljava/io/InputStreamReader;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "process":Ljava/lang/Process;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v3

    .line 85
    .local v3, "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static isHoneyComb()Z
    .locals 2

    .prologue
    .line 187
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIceCreamSandwich()Z
    .locals 2

    .prologue
    .line 191
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUIThread(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 226
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parseLine(Ljava/lang/String;)V
    .locals 4
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    .line 96
    new-instance v1, Ljava/util/StringTokenizer;

    const-string/jumbo v3, ":"

    invoke-direct {v1, p0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .local v1, "tokenizer":Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_1

    .line 104
    return-void

    .line 98
    :cond_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "value":Ljava/lang/String;
    sget-object v3, Lcom/aviary/android/feather/library/utils/SystemUtils;->mValues:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static throwIfNonUiThread(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 234
    invoke-static {p0}, Lcom/aviary/android/feather/library/utils/SystemUtils;->isUIThread(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string/jumbo v1, "Called from wrong thread!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_0
    return-void
.end method

.method public static final trySleep(J)V
    .locals 1
    .param p0, "millisec"    # J

    .prologue
    .line 271
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_0
    return-void

    .line 272
    :catch_0
    move-exception v0

    goto :goto_0
.end method
