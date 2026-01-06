# WeSpeak Frontend

[![CI](https://github.com/we-speak-org/wespeak-frontend/actions/workflows/ci.yml/badge.svg)](https://github.com/we-speak-org/wespeak-frontend/actions/workflows/ci.yml)

**WeSpeak** is an innovative language learning platform combining structured lessons, real conversations with native speakers via WebRTC, and AI-powered feedback.

## 🚀 Tech Stack

- **Angular 21** with Server-Side Rendering (SSR)
- **Zoneless** change detection for better performance
- **SCSS** for styling
- **Vitest** for unit testing
- **TypeScript 5.9**

## 📋 Features (Roadmap)

- [ ] Authentication (OAuth2 with Keycloak)
- [ ] Onboarding flow
- [ ] Learning dashboard
- [ ] Course & lesson player
- [ ] Exercise components (MCQ, Fill Gap, Translation, etc.)
- [ ] Real-time video conversations (WebRTC)
- [ ] AI feedback reports
- [ ] Gamification (XP, badges, leaderboards)
- [ ] Profile & settings

## 🔧 Prerequisites

- Node.js 22+
- npm 10+

## 📦 Installation

```bash
npm install
```

## 🏃 Development server

```bash
npm start
# or
ng serve
```

Navigate to `http://localhost:4200/`. The application will automatically reload on file changes.

## 🏗️ Building

```bash
npm run build
```

Artifacts are stored in `dist/wespeak-frontend/`. The build includes both browser and server bundles for SSR.

## 🧪 Running tests

```bash
npm test
```

Uses [Vitest](https://vitest.dev/) as the test runner.

## 🚀 Running SSR server

```bash
npm run build
npm run serve:ssr:wespeak-frontend
```
