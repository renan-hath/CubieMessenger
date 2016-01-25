.class Lcom/aviary/android/feather/widget/EffectThumbLayout$1;
.super Ljava/lang/Object;
.source "EffectThumbLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/widget/EffectThumbLayout;->postSetIsOpened(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/widget/EffectThumbLayout;

.field final synthetic val$opened:Z


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/widget/EffectThumbLayout;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/widget/EffectThumbLayout;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout$1;->this$0:Lcom/aviary/android/feather/widget/EffectThumbLayout;

    iput-boolean p2, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout$1;->val$opened:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout$1;->this$0:Lcom/aviary/android/feather/widget/EffectThumbLayout;

    iget-boolean v1, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout$1;->val$opened:Z

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/EffectThumbLayout;->postSetIsOpened(Z)V

    .line 85
    return-void
.end method
