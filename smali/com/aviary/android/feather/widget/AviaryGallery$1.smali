.class Lcom/aviary/android/feather/widget/AviaryGallery$1;
.super Ljava/lang/Object;
.source "AviaryGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/widget/AviaryGallery;->onKeyUp(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/widget/AviaryGallery;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/widget/AviaryGallery;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/widget/AviaryGallery;

    .prologue
    .line 1126
    iput-object p1, p0, Lcom/aviary/android/feather/widget/AviaryGallery$1;->this$0:Lcom/aviary/android/feather/widget/AviaryGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery$1;->this$0:Lcom/aviary/android/feather/widget/AviaryGallery;

    # invokes: Lcom/aviary/android/feather/widget/AviaryGallery;->dispatchUnpress()V
    invoke-static {v0}, Lcom/aviary/android/feather/widget/AviaryGallery;->access$100(Lcom/aviary/android/feather/widget/AviaryGallery;)V

    .line 1132
    return-void
.end method
