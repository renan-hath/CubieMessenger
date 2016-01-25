.class Lcom/liquable/nemo/db/Backup$2;
.super Ljava/lang/Object;
.source "Backup.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/db/Backup;->latestBackup(Ljava/lang/String;)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/db/Backup;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/db/Backup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/db/Backup;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/liquable/nemo/db/Backup$2;->this$0:Lcom/liquable/nemo/db/Backup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 8
    .param p1, "f1"    # Ljava/io/File;
    .param p2, "f2"    # Ljava/io/File;

    .prologue
    const-wide/16 v6, 0x0

    .line 161
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 162
    .local v0, "result":J
    cmp-long v2, v0, v6

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    cmp-long v2, v0, v6

    if-gez v2, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 158
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/db/Backup$2;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
