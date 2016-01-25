.class public interface abstract Lcom/aviary/android/feather/library/services/drag/DropTarget;
.super Ljava/lang/Object;
.source "DropTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/library/services/drag/DropTarget$DropTargetListener;
    }
.end annotation


# virtual methods
.method public abstract acceptDrop(Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;IIIILcom/aviary/android/feather/library/services/drag/DragView;Ljava/lang/Object;)Z
.end method

.method public abstract getHitRect(Landroid/graphics/Rect;)V
.end method

.method public abstract getLeft()I
.end method

.method public abstract getLocationOnScreen([I)V
.end method

.method public abstract getTop()I
.end method

.method public abstract onDragEnter(Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;IIIILcom/aviary/android/feather/library/services/drag/DragView;Ljava/lang/Object;)V
.end method

.method public abstract onDragExit(Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;IIIILcom/aviary/android/feather/library/services/drag/DragView;Ljava/lang/Object;)V
.end method

.method public abstract onDragOver(Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;IIIILcom/aviary/android/feather/library/services/drag/DragView;Ljava/lang/Object;)V
.end method

.method public abstract onDrop(Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;IIIILcom/aviary/android/feather/library/services/drag/DragView;Ljava/lang/Object;)V
.end method
