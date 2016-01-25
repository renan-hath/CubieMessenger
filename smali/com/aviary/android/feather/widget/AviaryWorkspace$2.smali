.class Lcom/aviary/android/feather/widget/AviaryWorkspace$2;
.super Ljava/lang/Object;
.source "AviaryWorkspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/widget/AviaryWorkspace;->postUpdateIndicator(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/widget/AviaryWorkspace;

.field final synthetic val$count:I

.field final synthetic val$screen:I


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/widget/AviaryWorkspace;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/widget/AviaryWorkspace;

    .prologue
    .line 1284
    iput-object p1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace$2;->this$0:Lcom/aviary/android/feather/widget/AviaryWorkspace;

    iput p2, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace$2;->val$screen:I

    iput p3, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace$2;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace$2;->this$0:Lcom/aviary/android/feather/widget/AviaryWorkspace;

    # getter for: Lcom/aviary/android/feather/widget/AviaryWorkspace;->mIndicator:Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;
    invoke-static {v0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->access$200(Lcom/aviary/android/feather/widget/AviaryWorkspace;)Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace$2;->this$0:Lcom/aviary/android/feather/widget/AviaryWorkspace;

    # getter for: Lcom/aviary/android/feather/widget/AviaryWorkspace;->mIndicator:Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;
    invoke-static {v0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->access$200(Lcom/aviary/android/feather/widget/AviaryWorkspace;)Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;

    move-result-object v0

    iget v1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace$2;->val$screen:I

    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace$2;->val$count:I

    invoke-virtual {v0, v1, v2}, Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;->setLevel(II)V

    .line 1289
    :cond_0
    return-void
.end method
