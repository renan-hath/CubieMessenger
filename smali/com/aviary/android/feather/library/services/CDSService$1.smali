.class Lcom/aviary/android/feather/library/services/CDSService$1;
.super Ljava/lang/Thread;
.source "CDSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/services/CDSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/library/services/CDSService;

.field private final synthetic val$listener:Lcom/aviary/android/feather/library/services/CDSService$OnCDSLoadComplete;


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/CDSService$1;->this$0:Lcom/aviary/android/feather/library/services/CDSService;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/services/CDSService;->open()V

    .line 70
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/CDSService$1;->val$listener:Lcom/aviary/android/feather/library/services/CDSService$OnCDSLoadComplete;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aviary/android/feather/library/services/CDSService$1;->val$listener:Lcom/aviary/android/feather/library/services/CDSService$OnCDSLoadComplete;

    invoke-interface {v1}, Lcom/aviary/android/feather/library/services/CDSService$OnCDSLoadComplete;->OnLoadComplete()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/CDSService$1;->val$listener:Lcom/aviary/android/feather/library/services/CDSService$OnCDSLoadComplete;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aviary/android/feather/library/services/CDSService$1;->val$listener:Lcom/aviary/android/feather/library/services/CDSService$OnCDSLoadComplete;

    invoke-interface {v1, v0}, Lcom/aviary/android/feather/library/services/CDSService$OnCDSLoadComplete;->OnLoadError(Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method
