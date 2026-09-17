# ESSENCE LUXE — Premium Perfume Store (Nigeria)

A stylish, luxury perfume e-commerce website with WhatsApp ordering. Built for a Lagos-based fragrance boutique.

**Live Demo:** Deploy to GitHub Pages (see instructions below)

### Features

**Public Landing Page:**
- Sticky luxury navbar with mobile hamburger menu
- Hero section: "Find Your Signature Scent"
- Collections: Women's, Men's, Unisex, Perfume Oils, Body Sprays, Gift Sets
- Featured Products with Naira pricing (₦), discount, View Details & Order on WhatsApp
- Brand statement, Why Choose Us, Promo Banner (editable)
- Customer Reviews
- Contact & WhatsApp CTA section
- Premium footer

**Admin Dashboard (`/admin.html`):**
- Secure login: `admin@essenceluxe.ng / Essence2025`
- Overview: total products, visible, featured, best sellers
- Product Management: Add/Edit/Delete/Duplicate, image upload, all fields (notes, longevity, occasion, stock, featured, best seller)
- Homepage Management: hero, promo banner, about, store name
- Review Management: add/edit/hide/delete
- Contact Settings: WhatsApp number (wa.me), phone, email, Instagram, address, hours
- Image Library
- All changes update public site instantly via localStorage

**WhatsApp Ordering:**
When customer clicks "Order on WhatsApp", a modal collects quantity, name, phone, delivery location and opens:
```
https://wa.me/2348012345678?text=Hello, I would like to order: Product: [...] Brand: [...] Size: [...] Quantity: [...] Price: ₦[...] Customer name: [...] Delivery location: [...]
```

### Tech Stack
- HTML5, CSS3, Vanilla JavaScript (ES6+)
- Tailwind CSS via CDN
- localStorage as database (easy to swap for Firebase/Supabase)
- No backend, no payment integration (as requested)

### Colors & Design
- Black #0A0A0A, Cream #FDFBF7, Beige #E8DDD0, Gold #C9A86A
- Fonts: Playfair Display (serif headings) + Inter (body)
- Fully responsive, smooth animations

### How to Run Locally
```bash
# Just open index.html, or serve:
python3 -m http.server 8000
# Then visit http://localhost:8000
# Admin at http://localhost:8000/admin.html
```

### Admin Credentials (Demo)
```
Email: admin@essenceluxe.ng
Password: Essence2025
```

### Deploy to GitHub Pages (Free Hosting)
1. Push to GitHub (see below)
2. Go to repo Settings > Pages
3. Source: Deploy from a branch > Branch: main > / (root)
4. Save — your site will be live at `https://yourusername.github.io/repo-name/`

### Future Expansion
- Replace localStorage with real database
- Add cloud image storage (Cloudinary/S3)
- Add inventory tracking, analytics

Built for Essence Luxe, Lagos, Nigeria. Authentic • Luxury • Nigerian.
