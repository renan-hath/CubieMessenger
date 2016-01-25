.class Lcom/aviary/android/feather/widget/AviaryWorkspace$1;
.super Ljava/lang/Object;
.source "AviaryWorkspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/widget/AviaryWorkspace;->onFinishedAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/widget/AviaryWorkspace;

.field final synthetic val$previousScreen:I


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/widget/AviaryWorkspace;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/widget/AviaryWorkspace;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace$1;->this$0:Lcom/aviary/android/feather/widget/AviaryWorkspace;

    iput p2, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace$1;->val$previousScreen:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 398
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace$1;->this$0:Lcom/aviary/android/feather/widget/AviaryWorkspace;

    # getter for: Lcom/aviary/android/feather/widget/AviaryWorkspace;->mOnPageChangeListener:Lcom/aviary/android/feather/widget/AviaryWorkspace$OnPageChangeListener;
    invoke-static {v0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->access$000(Lcom/aviary/android/feather/widget/AviaryWorkspace;)Lcom/aviary/android/feather/widget/AviaryWorkspace$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace$1;->this$0:Lcom/aviary/android/feather/widget/AviaryWorkspace;

    # getter for: Lcom/aviary/android/feather/widget/AviaryWorkspace;->mOnPageChangeListener:Lcom/aviary/android/feather/widget/AviaryWorkspace$OnPageChangeListener;
    invoke-static {v0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->access$000(Lcom/aviary/android/feather/widget/AviaryWorkspace;)Lcom/aviary/android/feather/widget/AviaryWorkspace$OnPageChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace$1;->this$0:Lcom/aviary/android/feather/widget/AviaryWorkspace;

    # getter for: Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I
    invoke-static {v1}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->access$100(Lcom/aviary/android/feather/widget/AviaryWorkspace;)I

    move-result v1

    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace$1;->val$previousScreen:I

    invoke-interface {v0, v1, v2}, Lcom/aviary/android/feather/widget/AviaryWorkspace$OnPageChangeListener;->onPageChanged(II)V

    .line 400
    :cond_0
    return-void
.end method
