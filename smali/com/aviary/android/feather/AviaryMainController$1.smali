.class Lcom/aviary/android/feather/AviaryMainController$1;
.super Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable;
.source "AviaryMainController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/AviaryMainController;->openDatabase()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/AviaryMainController;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/AviaryMainController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/AviaryMainController;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/aviary/android/feather/AviaryMainController$1;->this$0:Lcom/aviary/android/feather/AviaryMainController;

    invoke-direct {p0}, Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Lcom/aviary/android/feather/library/services/IAviaryController;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 348
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/aviary/android/feather/AviaryMainController$1;->call(Lcom/aviary/android/feather/library/services/IAviaryController;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call(Lcom/aviary/android/feather/library/services/IAviaryController;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "controller"    # Lcom/aviary/android/feather/library/services/IAviaryController;
    .param p2, "param"    # Ljava/lang/Void;

    .prologue
    .line 351
    const-class v1, Lcom/aviary/android/feather/library/services/CDSService;

    invoke-interface {p1, v1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/services/CDSService;

    .line 352
    .local v0, "cds":Lcom/aviary/android/feather/library/services/CDSService;
    invoke-virtual {v0}, Lcom/aviary/android/feather/library/services/CDSService;->open()V

    .line 353
    return-object p2
.end method
