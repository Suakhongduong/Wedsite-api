<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agent Details - Valorant Protocol</title>
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
                    <li class="nav-item"><a class="nav-link active" href="/characters/${character.characterId!''}">Details</a></li>
                    <li class="nav-item"><a class="nav-link" href="/about">About</a></li>
                    <li class="nav-item"><a class="nav-link" href="/characters/new">Add a Character</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container my-5">
        <div class="row align-items-center">
            <div class="col-md-6 text-center">
                <img src="${character.imageUrl!'/images/jett.jfif'}" class="img-fluid rounded shadow border border-secondary" alt="${character.name!''} Large" style="max-height: 500px; object-fit: cover;">
            </div>
            <div class="col-md-6">
                <h1 class="display-4 fw-bold" style="color: #ff4655;">${character.name!''}</h1>
                <span class="badge bg-danger fs-6 mb-3">${character.role!'Unknown'}</span>

                <ul class="list-unstyled mt-3 text-light">
                    <li><strong>Origin:</strong> ${character.origin!'Unknown'}</li>
                    <li><strong>Description:</strong> ${character.description!''}</li>
                </ul>

                <h3 class="mt-4 border-bottom pb-2 text-white">Agent Summary</h3>
                <p class="text-light">${character.description!''}</p>

                <div class="d-flex flex-wrap gap-2 mt-3">
                    <a href="/" class="btn btn-outline-light">Back to Gallery</a>
                    <a href="/characters/${character.characterId!''}/edit" class="btn btn-outline-primary">Edit Character</a>
                    <form action="/characters/${character.characterId!''}/delete" method="post" onsubmit="return confirm('Are you sure you want to delete ${character.name!'this character'}?');" style="display: inline;">
                        <button type="submit" class="btn btn-outline-danger">Delete Character</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>