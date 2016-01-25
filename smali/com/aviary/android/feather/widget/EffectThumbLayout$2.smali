.class Lcom/aviary/android/feather/widget/EffectThumbLayout$2;
.super Ljava/lang/Object;
.source "EffectThumbLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/widget/EffectThumbLayout;->postAnimateView(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/widget/EffectThumbLayout;

.field final synthetic val$durationMs:I

.field final synthetic val$isClosing:Z


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/widget/EffectThumbLayout;IZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/widget/EffectThumbLayout;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout$2;->this$0:Lcom/aviary/android/feather/widget/EffectThumbLayout;

    iput p2, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout$2;->val$durationMs:I

    iput-boolean p3, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout$2;->val$isClosing:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout$2;->this$0:Lcom/aviary/android/feather/widget/EffectThumbLayout;

    iget v1, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout$2;->val$durationMs:I

    iget-boolean v2, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout$2;->val$isClosing:Z

    invoke-virtual {v0, v1, v2}, Lcom/aviary/android/feather/widget/EffectThumbLayout;->animateView(IZ)V

    .line 132
    return-void
.end method
