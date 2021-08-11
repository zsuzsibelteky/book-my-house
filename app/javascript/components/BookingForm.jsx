import React from 'react'
import ReactDOM from 'react-dom'

export default function BookingForm() {
  function onSubmit() {
    window
      .fetch('/api/query', {
        method: 'POST',
        body: JSON.stringify({ booking: { day: 1, month: 2, year: 3 }}),
        headers: { 'Content-Type': 'application/json' }
      })
      .then(response => response.json())
      .then(console.log)
  }

  return <p>🚧 UNDER CONSTRUCTION 🚧</p>
}
