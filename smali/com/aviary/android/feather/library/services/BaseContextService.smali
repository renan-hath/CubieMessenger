.class public abstract Lcom/aviary/android/feather/library/services/BaseContextService;
.super Ljava/lang/Object;
.source "BaseContextService.java"


# instance fields
.field protected logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

.field private mContext:Lcom/aviary/android/feather/library/services/IAviaryController;


# direct methods
.method protected constructor <init>(Lcom/aviary/android/feather/library/services/IAviaryController;)V
    .locals 2
    .param p1, "context"    # Lcom/aviary/android/feather/library/services/IAviaryController;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/aviary/android/feather/library/services/BaseContextService;->mContext:Lcom/aviary/android/feather/library/services/IAviaryController;

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;->ConsoleLoggerType:Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;

    invoke-static {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory;->getLogger(Ljava/lang/String;Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;)Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/BaseContextService;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    .line 21
    return-void
.end method


# virtual methods
.method public abstract dispose()V
.end method

.method public getContext()Lcom/aviary/android/feather/library/services/IAviaryController;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/BaseContextService;->mContext:Lcom/aviary/android/feather/library/services/IAviaryController;

    return-object v0
.end method

.method public internalDispose()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 28
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/BaseContextService;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "internalDispose"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 29
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/BaseContextService;->dispose()V

    .line 30
    iput-object v4, p0, Lcom/aviary/android/feather/library/services/BaseContextService;->mContext:Lcom/aviary/android/feather/library/services/IAviaryController;

    .line 31
    iput-object v4, p0, Lcom/aviary/android/feather/library/services/BaseContextService;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    .line 32
    return-void
.end method
