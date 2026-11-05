<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Agent - Valorant Protocol</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/styles.css">
</head>
<body class="bg-dark text-white">
    <nav class="navbar navbar-expand-lg navbar-dark bg-secondary">
        <div class="container">
            <a class="navbar-brand fw-bold text-danger" href="/">VALORANT PROTOCOL</a>
            <div class="collapse navbar-collapse">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="/">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="/about">About</a></li>
                    <li class="nav-item"><a class="nav-link active" href="/characters/new">Add a Character</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container my-5">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card shadow bg-secondary border-0">
                    <div class="card-header text-white" style="background-color: #ff4655;">
                        <h3 class="card-title mb-0 fw-bold">Recruit a New Agent</h3>
                    </div>
                    <div class="card-body p-4">
                        <form action="/characters" method="post">
                            <div class="mb-3">
                                <label for="name" class="form-label">Agent Name</label>
                                <input type="text" class="form-control" id="name" name="name" placeholder="e.g. ISO, Clove" required>
                            </div>
                            <div class="mb-3">
                                <label for="origin" class="form-label">Universe / Origin Country</label>
                                <input type="text" class="form-control" id="origin" name="origin" placeholder="e.g. China, Scotland" required>
                            </div>
                            <div class="mb-3">
                                <label for="role" class="form-label">Role</label>
                                <select class="form-select" id="role" name="role" required>
                                    <option value="" selected disabled>Select agent role...</option>
                                    <option value="Duelist">Duelist</option>
                                    <option value="Initiator">Initiator</option>
                                    <option value="Controller">Controller</option>
                                    <option value="Sentinel">Sentinel</option>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label for="imageUrl" class="form-label">Official Art Image URL</label>
                                <input type="url" class="form-control" id="imageUrl" name="imageUrl" placeholder="/images/jett.jfif or https://example.com/image.png" required>
                            </div>
                            <div class="mb-3">
                                <label for="description" class="form-label">Short Description & Abilities</label>
                                <textarea class="form-control" id="description" name="description" rows="4" placeholder="Enter tactical summary and abilities..." required></textarea>
                            </div>
                            <button type="submit" class="btn btn-primary w-100">Add Agent to Roster</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>