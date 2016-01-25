.class public interface abstract Lcom/aviary/android/feather/library/services/IAviaryController;
.super Ljava/lang/Object;
.source "IAviaryController.java"


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract downloadPlugin(Ljava/lang/String;I)V
.end method

.method public abstract getBaseActivity()Landroid/app/Activity;
.end method

.method public abstract getBaseContext()Landroid/content/Context;
.end method

.method public abstract getCurrentImageViewMatrix()Landroid/graphics/Matrix;
.end method

.method public abstract getDragLayer()Lcom/aviary/android/feather/library/services/drag/DragLayer;
.end method

.method public abstract getService(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract restoreToolbarTitle()V
.end method

.method public abstract searchPlugin(I)V
.end method

.method public abstract setPanelApplyStatusEnabled(Z)V
.end method

.method public abstract setToolbarTitle(I)V
.end method

.method public abstract setToolbarTitle(Ljava/lang/CharSequence;)V
.end method
