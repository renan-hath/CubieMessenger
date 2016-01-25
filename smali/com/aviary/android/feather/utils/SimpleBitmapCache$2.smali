.class Lcom/aviary/android/feather/utils/SimpleBitmapCache$2;
.super Ljava/lang/Object;
.source "SimpleBitmapCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/utils/SimpleBitmapCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/utils/SimpleBitmapCache;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/utils/SimpleBitmapCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/utils/SimpleBitmapCache;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/aviary/android/feather/utils/SimpleBitmapCache$2;->this$0:Lcom/aviary/android/feather/utils/SimpleBitmapCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/aviary/android/feather/utils/SimpleBitmapCache$2;->this$0:Lcom/aviary/android/feather/utils/SimpleBitmapCache;

    invoke-virtual {v0}, Lcom/aviary/android/feather/utils/SimpleBitmapCache;->clearCache()V

    .line 85
    return-void
.end method
