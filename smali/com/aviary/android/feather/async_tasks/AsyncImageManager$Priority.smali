.class public final enum Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;
.super Ljava/lang/Enum;
.source "AsyncImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/async_tasks/AsyncImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;

.field public static final enum HIGH:Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;

.field public static final enum LOW:Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;

    const-string/jumbo v1, "HIGH"

    invoke-direct {v0, v1, v2}, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;->HIGH:Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;

    new-instance v0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;

    const-string/jumbo v1, "LOW"

    invoke-direct {v0, v1, v3}, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;->LOW:Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;

    sget-object v1, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;->HIGH:Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;->LOW:Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;

    aput-object v1, v0, v3

    sput-object v0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;->$VALUES:[Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;

    return-object v0
.end method

.method public static values()[Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;->$VALUES:[Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;

    invoke-virtual {v0}, [Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;

    return-object v0
.end method
