.class public Lcom/liquable/nemo/util/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static NEMO_INSTANCE:Lcom/liquable/nemo/util/Logger;

.field private static SOCKET_INSTANCE:Lcom/liquable/nemo/util/Logger;

.field private static returnDummyInstance:Z


# instance fields
.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 81
    const/4 v0, 0x0

    sput-boolean v0, Lcom/liquable/nemo/util/Logger;->returnDummyInstance:Z

    .line 83
    new-instance v0, Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v1, "nemo_debug"

    invoke-direct {v0, v1}, Lcom/liquable/nemo/util/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/util/Logger;->NEMO_INSTANCE:Lcom/liquable/nemo/util/Logger;

    .line 85
    new-instance v0, Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v1, "nemo_socket"

    invoke-direct {v0, v1}, Lcom/liquable/nemo/util/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/util/Logger;->SOCKET_INSTANCE:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/liquable/nemo/util/Logger;->tag:Ljava/lang/String;

    .line 91
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/liquable/nemo/util/Logger$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/liquable/nemo/util/Logger$1;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/liquable/nemo/util/Logger;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static dummy()V
    .locals 2

    .prologue
    .line 12
    const/4 v0, 0x1

    sput-boolean v0, Lcom/liquable/nemo/util/Logger;->returnDummyInstance:Z

    .line 13
    new-instance v0, Lcom/liquable/nemo/util/Logger$1;

    const-string/jumbo v1, "DUMMY"

    invoke-direct {v0, v1}, Lcom/liquable/nemo/util/Logger$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/util/Logger;->NEMO_INSTANCE:Lcom/liquable/nemo/util/Logger;

    .line 31
    new-instance v0, Lcom/liquable/nemo/util/Logger$2;

    const-string/jumbo v1, "DUMMY"

    invoke-direct {v0, v1}, Lcom/liquable/nemo/util/Logger$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/util/Logger;->SOCKET_INSTANCE:Lcom/liquable/nemo/util/Logger;

    .line 48
    return-void
.end method

.method public static getInstance()Lcom/liquable/nemo/util/Logger;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/liquable/nemo/util/Logger;->NEMO_INSTANCE:Lcom/liquable/nemo/util/Logger;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/liquable/nemo/util/Logger;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v0, Lcom/liquable/nemo/util/Logger;->returnDummyInstance:Z

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Lcom/liquable/nemo/util/Logger$3;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/util/Logger$3;-><init>(Ljava/lang/String;)V

    .line 74
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/liquable/nemo/util/Logger;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/util/Logger;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstanceForNetwork()Lcom/liquable/nemo/util/Logger;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/liquable/nemo/util/Logger;->SOCKET_INSTANCE:Lcom/liquable/nemo/util/Logger;

    return-object v0
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-static {p1}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/liquable/nemo/util/Logger;->tag:Ljava/lang/String;

    const-string/jumbo v1, "blank debug message"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    sget-object v0, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    invoke-virtual {v0}, Lcom/liquable/nemo/client/ServerType;->isProduction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/liquable/nemo/util/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public varargs debugFormat(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "formatPattern"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 104
    sget-object v0, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    invoke-virtual {v0}, Lcom/liquable/nemo/client/ServerType;->isProduction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-static {p1}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/liquable/nemo/util/Logger;->tag:Ljava/lang/String;

    const-string/jumbo v1, "blank debug message"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/util/Logger;->tag:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public error(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-static {p1}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/liquable/nemo/util/Logger;->tag:Ljava/lang/String;

    const-string/jumbo v1, "blank debug message"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/util/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 123
    invoke-static {p1}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/liquable/nemo/util/Logger;->tag:Ljava/lang/String;

    const-string/jumbo v1, "blank debug message"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/util/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public info(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-static {p1}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/liquable/nemo/util/Logger;->tag:Ljava/lang/String;

    const-string/jumbo v1, "blank debug message"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/util/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public warn(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-static {p1}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/liquable/nemo/util/Logger;->tag:Ljava/lang/String;

    const-string/jumbo v1, "blank debug message"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/util/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 147
    invoke-static {p1}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/liquable/nemo/util/Logger;->tag:Ljava/lang/String;

    const-string/jumbo v1, "blank debug message"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/util/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
